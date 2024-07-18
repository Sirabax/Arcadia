require('dotenv').config();
const express = require('express');
const bcrypt = require('bcryptjs');
const session = require('express-session');
const bodyParser = require('body-parser');
const path = require('path');
const mysql = require('mysql2');
const fs = require('fs');
const nodemailer = require('nodemailer');
const RedisStore = require('connect-redis').default;
const { createClient } = require('redis');

// Configuration de la connexion à la base de données MySQL
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME
});

// Connexion à la base de données
db.connect(err => {
  if (err) {
    console.error('Erreur de connexion à la base de données:', err);
    process.exit(1);
  } else {
    console.log('Connecté à la base de données MySQL');
  }
});

const app = express();
const port = process.env.PORT || 3000;

// Configuration de Redis
const redisClient = createClient({
  url: process.env.REDISCLOUD_URL
});

redisClient.on('error', (err) => {
  console.error('Could not connect to Redis:', err);
});

redisClient.connect().then(() => {
  console.log('Connected to Redis');
}).catch(console.error);

// Configuration des middlewares
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(session({
  store: new RedisStore({ client: redisClient }),
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: true,
  cookie: { secure: 'auto' } // Utilisez true si vous avez un certificat SSL configuré
}));

// Servir les fichiers statiques
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'views')));

// Middleware pour protéger les routes sécurisées
function requireLogin(req, res, next) {
  if (!req.session.user) {
    console.log('User not authenticated, redirecting to /login');
    return res.redirect('/login');
  }
  next();
}

// Middleware pour protéger les routes réservées aux vétérinaires ou directeurs
function requireVetOrDir(req, res, next) {
  if (!req.session.user || (req.session.user.choix !== 'VET' && req.session.user.choix !== 'DIR')) {
    console.log('User not authenticated or not a vet/director, redirecting to /login');
    return res.redirect('/login');
  }
  next();
}

// Routes pour l'authentification
app.get('/login', (req, res) => {
  console.log('GET /login route reached');
  res.sendFile(path.join(__dirname, 'public', 'login.html'));
});

app.post('/login', (req, res) => {
  console.log('POST /login route reached');
  const { email, password } = req.body;

  db.query('SELECT * FROM users WHERE email = ?', [email], async (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    if (results.length > 0) {
      const user = results[0];
      const isMatch = await bcrypt.compare(password, user.motdepasse);
      if (isMatch) {
        console.log('Login successful');
        req.session.user = user;
        return res.redirect('/administration');
      }
    }

    console.log('Login failed');
    res.send('Email ou mot de passe incorrect');
  });
});

// Routes pour les pages sécurisées
app.get('/administration', requireLogin, (req, res) => {
  console.log('GET /administration route reached');
  res.sendFile(path.join(__dirname, 'views', 'administration.html'));
});

app.get('/horaire', requireLogin, (req, res) => {
  console.log('GET /horaire route reached');
  res.sendFile(path.join(__dirname, 'views', 'horaire.html'));
});

app.get('/dashboard', requireLogin, (req, res) => {
  console.log('GET /dashboard route reached');
  res.sendFile(path.join(__dirname, 'views', 'dashboard.html'));
});

app.get('/modifservices', requireLogin, (req, res) => {
  console.log('GET /modifservices route reached');
  res.sendFile(path.join(__dirname, 'views', 'modifservices.html'));
});

// Routes pour la gestion des services
app.post('/addService', requireLogin, (req, res) => {
  const { titre, description, logo_path } = req.body;

  const sql = 'INSERT INTO services (titre, description, logo_path) VALUES (?, ?, ?)';
  db.query(sql, [titre, description, logo_path], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    console.log('Nouveau service ajouté:', { titre, description, logo_path });
    res.send('Service ajouté avec succès');
  });
});

app.get('/getServices', (req, res) => {
  const sql = 'SELECT id, titre, description, logo_path FROM services';
  db.query(sql, (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    console.log(results);  // Ajoutez ceci pour voir les résultats dans la console
    res.json(results);
  });
});

app.delete('/deleteService/:id', requireLogin, (req, res) => {
  const { id } = req.params;

  const sql = 'DELETE FROM services WHERE id = ?';
  db.query(sql, [id], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    res.send('Service supprimé avec succès');
  });
});

// Route pour la page d'accueil
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'index.html'));
});

// Routes pour la gestion des utilisateurs
app.get('/addUser', requireLogin, (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'addUser.html'));
});

app.post('/addUser', requireLogin, async (req, res) => {
  const { prenom, nom, email, motdepasse, choix } = req.body;
  const password = await bcrypt.hash(motdepasse, 10);

  const sql = 'INSERT INTO users (prenom, nom, email, motdepasse, choix) VALUES (?, ?, ?, ?, ?)';
  db.query(sql, [prenom, nom, email, password, choix], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    console.log('Nouvel utilisateur ajouté:', { prenom, nom, email, choix });
    res.send('Utilisateur ajouté avec succès');
  });
});

// Routes pour la gestion des animaux
app.get('/gestionanimaux', requireVetOrDir, (req, res) => {
  console.log('GET /gestionanimaux route reached');
  res.sendFile(path.join(__dirname, 'views', 'gestionanimaux.html'));
});

app.get('/getAnimals', (req, res) => {
  const { habitat } = req.query;
  const sql = 'SELECT * FROM animals WHERE habitat = ?';
  db.query(sql, [habitat], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    res.json(results);
  });
});

app.get('/getAnimalDetails', (req, res) => {
  const { habitat, index } = req.query;
  const sql = 'SELECT * FROM animals WHERE habitat = ? AND animalIndex = ?';
  db.query(sql, [habitat, index], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    if (results.length > 0) {
      res.json(results[0]);
    } else {
      res.status(404).send('Animal non trouvé');
    }
  });
});

app.post('/saveAnimalDetails', requireVetOrDir, (req, res) => {
  const { habitat, animalIndex, name, race, image, etat, nourriture, grammage, date, description } = req.body;
  
  // Convertir la date en format YYYY-MM-DD
  const formattedDate = new Date(date).toISOString().split('T')[0];

  const sql = 'UPDATE animals SET name = ?, race = ?, image = ?, etat = ?, nourriture = ?, grammage = ?, date = ?, description = ? WHERE habitat = ? AND animalIndex = ?';
  db.query(sql, [name, race, image, etat, nourriture, grammage, formattedDate, description, habitat, animalIndex], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    res.send('Détails de l\'animal sauvegardés avec succès');
  });
});

// Routes pour la gestion des likes sur les animaux
app.post('/likeAnimal', (req, res) => {
  const { habitat, animalIndex } = req.body;

  const sql = 'UPDATE animals SET likes = likes + 1 WHERE habitat = ? AND animalIndex = ?';
  db.query(sql, [habitat, animalIndex], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    res.send('Like ajouté avec succès');
  });
});

app.get('/getAnimalData', (req, res) => {
  const sql = 'SELECT name, likes FROM animals';
  db.query(sql, (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    const labels = results.map(animal => animal.name);
    const likes = results.map(animal => animal.likes);
    res.json({ labels, likes });
  });
});

// Routes pour la gestion des commentaires
app.post('/addComment', (req, res) => {
  const { username, comment } = req.body;

  // Validation basique
  if (!username || !comment) {
    return res.status(400).send('Nom d\'utilisateur et commentaire requis');
  }

  const sql = 'INSERT INTO comments (username, comment, is_approved) VALUES (?, ?, FALSE)';
  db.query(sql, [username, comment], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    res.send('Commentaire soumis pour approbation');
  });
});

app.get('/getApprovedComments', (req, res) => {
  const sql = 'SELECT username, comment FROM comments WHERE is_approved = TRUE ORDER BY id DESC';
  db.query(sql, (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    res.json(results);
  });
});

app.get('/validation', requireLogin, (req, res) => {
  res.sendFile(path.join(__dirname, 'views', 'validation.html'));
});

app.get('/getPendingComments', (req, res) => {
  const sql = 'SELECT id, username, comment FROM comments WHERE is_approved = FALSE';
  db.query(sql, (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    res.json(results);
  });
});

app.post('/approveComment/:id', (req, res) => {
  const { id } = req.params;

  const sql = 'UPDATE comments SET is_approved = TRUE WHERE id = ?';
  db.query(sql, [id], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    res.send('Commentaire approuvé avec succès');
  });
});

app.delete('/deleteComment/:id', requireLogin, (req, res) => {
  const { id } = req.params;

  const sql = 'DELETE FROM comments WHERE id = ?';
  db.query(sql, [id], (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }

    res.send('Commentaire supprimé avec succès');
  });
});

// Route pour gérer l'envoi du formulaire de contact
app.post('/send-email', (req, res) => {
  const { name, email, subject, message } = req.body;

  const transporter = nodemailer.createTransport({
    service: 'Gmail',
    auth: {
      user: process.env.EMAIL_USER,
      pass: process.env.EMAIL_PASS,
    },
  });

  const mailOptions = {
    from: email,
    to: 'josette@zooarcadia.fr',
    subject: subject,
    text: `Name: ${name}\nEmail: ${email}\nMessage: ${message}`,
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log(error);
      return res.status(500).send('Erreur lors de l\'envoi du message');
    } else {
      console.log('Email sent: ' + info.response);
      res.send('Message envoyé avec succès');
    }
  });
});

// Endpoint pour mettre à jour les heures d'ouverture (nécessite une authentification)
app.post('/api/hours', requireLogin, (req, res) => {
  const hours = req.body;

  // Chemin vers le fichier hours.json
  const hoursFilePath = path.join(__dirname, 'hours.json');

  // Écriture des nouvelles heures dans hours.json
  fs.writeFile(hoursFilePath, JSON.stringify(hours, null, 2), (err) => {
    if (err) {
      console.error('Erreur lors de la mise à jour des heures:', err);
      return res.status(500).send('Erreur du serveur');
    }
    res.send('Heures mises à jour avec succès');
  });
});

// Endpoint pour récupérer les heures d'ouverture (pas besoin d'authentification)
app.get('/api/hours', (req, res) => {
  const hoursFilePath = path.join(__dirname, 'hours.json');
  fs.readFile(hoursFilePath, 'utf8', (err, data) => {
    if (err) {
      console.error('Erreur de lecture des horaires:', err);
      return res.status(500).send('Erreur du serveur');
    }
    res.json(JSON.parse(data));
  });
});

// Endpoint pour obtenir tous les services (pas besoin d'authentification)
app.get('/getServices', (req, res) => {
  const sql = 'SELECT id, titre, description, logo_path FROM services';
  db.query(sql, (err, results) => {
    if (err) {
      console.error('Erreur de requête SQL:', err);
      return res.status(500).send('Erreur du serveur');
    }
    console.log(results);  // Ajoutez ceci pour voir les résultats dans la console
    res.json(results);
  });
});

// Démarrage du serveur
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
