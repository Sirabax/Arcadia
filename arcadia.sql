ÿþ- -   M y S Q L   d u m p   1 0 . 1 3     D i s t r i b   8 . 0 . 3 6 ,   f o r   W i n 6 4   ( x 8 6 _ 6 4 ) 
 
 - - 
 
 - -   H o s t :   l o c a l h o s t         D a t a b a s e :   a r c a d i a 
 
 - -   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 - -   S e r v e r   v e r s i o n 	 8 . 0 . 3 6 
 
 
 
 / * ! 4 0 1 0 1   S E T   @ O L D _ C H A R A C T E R _ S E T _ C L I E N T = @ @ C H A R A C T E R _ S E T _ C L I E N T   * / ; 
 
 / * ! 4 0 1 0 1   S E T   @ O L D _ C H A R A C T E R _ S E T _ R E S U L T S = @ @ C H A R A C T E R _ S E T _ R E S U L T S   * / ; 
 
 / * ! 4 0 1 0 1   S E T   @ O L D _ C O L L A T I O N _ C O N N E C T I O N = @ @ C O L L A T I O N _ C O N N E C T I O N   * / ; 
 
 / * ! 5 0 5 0 3   S E T   N A M E S   u t f 8 m b 4   * / ; 
 
 / * ! 4 0 1 0 3   S E T   @ O L D _ T I M E _ Z O N E = @ @ T I M E _ Z O N E   * / ; 
 
 / * ! 4 0 1 0 3   S E T   T I M E _ Z O N E = ' + 0 0 : 0 0 '   * / ; 
 
 / * ! 4 0 0 1 4   S E T   @ O L D _ U N I Q U E _ C H E C K S = @ @ U N I Q U E _ C H E C K S ,   U N I Q U E _ C H E C K S = 0   * / ; 
 
 / * ! 4 0 0 1 4   S E T   @ O L D _ F O R E I G N _ K E Y _ C H E C K S = @ @ F O R E I G N _ K E Y _ C H E C K S ,   F O R E I G N _ K E Y _ C H E C K S = 0   * / ; 
 
 / * ! 4 0 1 0 1   S E T   @ O L D _ S Q L _ M O D E = @ @ S Q L _ M O D E ,   S Q L _ M O D E = ' N O _ A U T O _ V A L U E _ O N _ Z E R O '   * / ; 
 
 / * ! 4 0 1 1 1   S E T   @ O L D _ S Q L _ N O T E S = @ @ S Q L _ N O T E S ,   S Q L _ N O T E S = 0   * / ; 
 
 
 
 - - 
 
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` a n i m a l s ` 
 
 - - 
 
 
 
 D R O P   T A B L E   I F   E X I S T S   ` a n i m a l s ` ; 
 
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ; 
 
 / * ! 5 0 5 0 3   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8 m b 4   * / ; 
 
 C R E A T E   T A B L E   ` a n i m a l s `   ( 
 
     ` i d `   i n t   N O T   N U L L   A U T O _ I N C R E M E N T , 
 
     ` h a b i t a t `   v a r c h a r ( 2 5 5 )   N O T   N U L L , 
 
     ` a n i m a l I n d e x `   i n t   N O T   N U L L , 
 
     ` n a m e `   v a r c h a r ( 2 5 5 )   N O T   N U L L , 
 
     ` r a c e `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     ` i m a g e `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     ` e t a t `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     ` n o u r r i t u r e `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     ` g r a m m a g e `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     ` d a t e `   d a t e   D E F A U L T   N U L L , 
 
     ` d e s c r i p t i o n `   t e x t , 
 
     ` l i k e s `   i n t   D E F A U L T   ' 0 ' , 
 
     P R I M A R Y   K E Y   ( ` i d ` ) 
 
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 1 9   D E F A U L T   C H A R S E T = u t f 8 m b 4   C O L L A T E = u t f 8 m b 4 _ 0 9 0 0 _ a i _ c i ; 
 
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ; 
 
 
 
 - - 
 
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` a n i m a l s ` 
 
 - - 
 
 
 
 L O C K   T A B L E S   ` a n i m a l s `   W R I T E ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` a n i m a l s `   D I S A B L E   K E Y S   * / ; 
 
 I N S E R T   I N T O   ` a n i m a l s `   V A L U E S   ( 1 , ' f o r e s t ' , 0 , ' C a p u t o ' , ' S i n g e   C a p u c i n ' , ' i m g / a n i m a l s / m o n k e y . j p g ' , ' E n   b o n n e   s a n t ' , ' F r u i t s ,   I n s e c t e s ' , ' 5 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 8 ' , ' L e s   s i n g e s   c a p u c i n s   s o n t   d e s   a n i m a u x   i n t e l l i g e n t s   q u i   h a b i t e n t   d a n s   l e s   a r b r e s   d e   l a   f o r t   t r o p i c a l e . ' , 7 ) , ( 2 , ' f o r e s t ' , 1 , ' A r a ' , ' P e r r o q u e t   A r a ' , ' i m g / a n i m a l s / p a r r o t . j p g ' , ' E n   b o n n e   s a n t ' , ' G r a i n e s ,   F r u i t s ' , ' 2 0 0 g ' , ' 2 0 2 4 - 0 7 - 1 0 ' , ' L e s   p e r r o q u e t s   s o n t   d e s   o i s e a u x   c o l o r s   q u i   h a b i t e n t   l e s   z o n e s   b o i s e s   e t   t r o p i c a l e s . ' , 1 5 ) , ( 3 , ' f o r e s t ' , 2 , ' L e o ' , ' L o p a r d ' , ' i m g / a n i m a l s / l e o p a r d . j p g ' , ' E n   b o n n e   s a n t ' , ' V i a n d e ' , ' 1 0 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   l o p a r d s   s o n t   d e s   g r a n d s   f l i n s   r a p i d e s   e t   a g i l e s   q u i   v i v e n t   d a n s   l a   f o r t   t r o p i c a l e . ' , 3 1 ) , ( 4 , ' s a v a n n a h ' , 0 , ' G i g i ' , ' G i r a f e ' , ' i m g / a n i m a l s / g i r a f f e . j p g ' , ' E n   b o n n e   s a n t ' , ' F e u i l l e s ,   B r a n c h e s ' , ' 1 5 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   g i r a f e s   s o n t   l e s   p l u s   g r a n d e s   c r a t u r e s   d e   l a   s a v a n e   a v e c   l e u r   l o n g   c o u   e t   l e u r s   t a c h e s . ' , 8 ) , ( 5 , ' s a v a n n a h ' , 1 , ' Z i z o u ' , ' Z b r e ' , ' i m g / a n i m a l s / z e b r a . j p g ' , ' E n   b o n n e   s a n t ' , ' H e r b e s ,   P l a n t e s ' , ' 8 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   z b r e s   s o n t   d e s   q u i d s   r a y s   q u i   s e   d p l a c e n t   e n   t r o u p e a u x   d a n s   l a   s a v a n e   a f r i c a i n e . ' , 8 ) , ( 6 , ' s a v a n n a h ' , 2 , ' A n t o ' , ' A n t i l o p e ' , ' i m g / a n i m a l s / a n t e l o p e . j p g ' , ' E n   b o n n e   s a n t ' , ' H e r b e s ' , ' 6 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   a n t i l o p e s   s o n t   d e s   a n i m a u x   r a p i d e s   e t   a g i l e s   q u i   h a b i t e n t   l e s   p l a i n e s   o u v e r t e s . ' , 1 8 ) , ( 7 , ' a q u a r i u m ' , 0 , ' N e m o ' , ' P o i s s o n   C l o w n ' , ' i m g / a n i m a l s / f i s h . j p g ' , ' E n   b o n n e   s a n t ' , ' A l g u e s ,   P e t i t s   c r u s t a c s ' , ' 1 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 2 ' , ' L e s   p o i s s o n s   c l o w n s   s o n t   d e s   c r a t u r e s   c o l o r e s   e t   d i v e r s e s   q u i   v i v e n t   d a n s   l e s   r c i f s . ' , 8 ) , ( 8 , ' a q u a r i u m ' , 1 , ' S h a r k y ' , ' R e q u i n ' , ' i m g / a n i m a l s / s h a r k . j p g ' , ' E n   b o n n e   s a n t ' , ' P o i s s o n s ,   M a m m i f r e s   m a r i n s ' , ' 2 0 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   r e q u i n s   s o n t   d e s   p r d a t e u r s   m a r i n s   t r o u v s   d a n s   l e s   o c a n s   d u   m o n d e   e n t i e r . ' , 3 3 ) , ( 9 , ' a q u a r i u m ' , 2 , ' T u r t l y ' , ' T o r t u e   M a r i n e ' , ' i m g / a n i m a l s / t u r t l e . j p g ' , ' E n   b o n n e   s a n t ' , ' A l g u e s ,   M d u s e s ' , ' 5 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   t o r t u e s   m a r i n e s   s o n t   d e s   r e p t i l e s   a q u a t i q u e s   t r o u v s   d a n s   l e s   o c a n s   d u   m o n d e   e n t i e r . ' , 3 1 ) , ( 1 0 , ' a r c t i c ' , 0 , ' P o l i ' , ' O u r s   P o l a i r e ' , ' i m g / a n i m a l s / p o l a r - b e a r . j p g ' , ' E n   b o n n e   s a n t ' , ' P h o q u e s ' , ' 3 0 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 7 ' , ' L e s   o u r s   p o l a i r e s   s o n t   a d a p t s   a u   f r o i d   e x t r m e   e t   c h a s s e n t   s u r   l a   b a n q u i s e . ' , 2 4 ) , ( 1 1 , ' a r c t i c ' , 1 , ' F o x y ' , ' R e n a r d   A r c t i q u e ' , ' i m g / a n i m a l s / a r c t i c - f o x . j p g ' , ' E n   b o n n e   s a n t ' , ' L e m m i n g s ,   O i s e a u x ' , ' 3 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   r e n a r d s   a r c t i q u e s   o n t   u n   p e l a g e   p a i s   e t   b l a n c   q u i   l e u r   s e r t   d e   c a m o u f l a g e   d a n s   l a   t o u n d r a . ' , 2 4 ) , ( 1 2 , ' a r c t i c ' , 2 , ' P e n g y ' , ' P i n g o u i n   E m p e r e u r ' , ' i m g / a n i m a l s / p e n g u i n . j p g ' , ' E n   b o n n e   s a n t ' , ' P o i s s o n s ,   K r i l l ' , ' 4 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   p i n g o u i n s   e m p e r e u r s   s o n t   d e s   o i s e a u x   m a r i n s   q u i   v i v e n t   d a n s   l e s   r g i o n s   p o l a i r e s   e t   s e   n o u r r i s s e n t   d e   p o i s s o n . ' , 6 ) , ( 1 3 , ' j u n g l e ' , 0 , ' J a g g y ' , ' J a g u a r ' , ' i m g / a n i m a l s / j a g u a r . j p g ' , ' E n   b o n n e   s a n t ' , ' M a m m i f r e s ' , ' 1 2 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   j a g u a r s   s o n t   d e   g r a n d s   f l i n s   t a c h e t s   q u i   c h a s s e n t   d a n s   l e s   a r b r e s   d e   l a   j u n g l e . ' , 2 3 ) , ( 1 4 , ' j u n g l e ' , 1 , ' H o w l y ' , ' S i n g e   H u r l e u r ' , ' i m g / a n i m a l s / h o w l e r - m o n k e y . j p g ' , ' E n   b o n n e   s a n t ' , ' F r u i t s ,   F e u i l l e s ' , ' 4 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   s i n g e s   h u r l e u r s   s o n t   d e s   p r i m a t e s   b r u y a n t s   q u i   v i v e n t   d a n s   l e s   c a n o p e s   d e s   f o r t s   t r o p i c a l e s . ' , 7 ) , ( 1 5 , ' j u n g l e ' , 2 , ' T i g r o u ' , ' T i g r e   d e   S y b r i e ' , ' i m g / a n i m a l s / t i g e r . j p g ' , ' E n   b o n n e   s a n t ' , ' V i a n d e ' , ' 1 5 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 9 ' , ' L e s   t i g r e s   s o n t   d e s   f l i n s   m a j e s t u e u x ,   r e c o n n u s   p o u r   l e u r s   r a y u r e s   d i s t i n c t i v e s   e t   l e u r   p u i s s a n c e ,   s y m b o l i s a n t   l a   f o r c e   e t   l a   b e a u t   s a u v a g e   d a n s   l e s   j u n g l e s   e t   l e s   f o r t s   d \ ' A s i e . ' , 2 3 ) , ( 1 6 , ' r e p t i l e ' , 0 , ' P y t h y ' , ' P y t h o n ' , ' i m g / a n i m a l s / p y t h o n . j p g ' , ' E n   b o n n e   s a n t ' , ' R o n g e u r s ' , ' 1 0 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   p y t h o n s   s o n t   d e s   s e r p e n t s   c o n s t r i c t e u r s   q u i   h a b i t e n t   l e s   z o n e s   t r o p i c a l e s . ' , 1 7 ) , ( 1 7 , ' r e p t i l e ' , 1 , ' C r o c o ' , ' C r o c o d i l e   d u   N i l ' , ' i m g / a n i m a l s / c r o c o d i l e . j p g ' , ' E n   b o n n e   s a n t ' , ' P o i s s o n s ,   M a m m i f r e s ' , ' 1 5 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 5 ' , ' L e s   c r o c o d i l e s   d u   N i l   s o n t   d e   g r a n d s   r e p t i l e s   a q u a t i q u e s   t r o u v s   e n   A f r i q u e . ' , 1 3 ) , ( 1 8 , ' r e p t i l e ' , 2 , ' S h e l l y ' , ' T o r t u e   G a n t e ' , ' i m g / a n i m a l s / t u r t l e g . j p g ' , ' E n   b o n n e   s a n t ' , ' H e r b e s ,   F r u i t s ' , ' 8 0 0 g ' , ' 2 0 2 4 - 0 7 - 0 9 ' , ' L e s   t o r t u e s   g a n t e s   s o n t   d e s   r e p t i l e s     l o n g u e   d u r e   d e   v i e   t r o u v s   d a n s   l e s   l e s . ' , 5 ) ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` a n i m a l s `   E N A B L E   K E Y S   * / ; 
 
 U N L O C K   T A B L E S ; 
 
 
 
 - - 
 
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` c o m m e n t s ` 
 
 - - 
 
 
 
 D R O P   T A B L E   I F   E X I S T S   ` c o m m e n t s ` ; 
 
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ; 
 
 / * ! 5 0 5 0 3   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8 m b 4   * / ; 
 
 C R E A T E   T A B L E   ` c o m m e n t s `   ( 
 
     ` i d `   i n t   N O T   N U L L   A U T O _ I N C R E M E N T , 
 
     ` u s e r n a m e `   v a r c h a r ( 2 5 5 )   N O T   N U L L , 
 
     ` c o m m e n t `   t e x t   N O T   N U L L , 
 
     ` c r e a t e d _ a t `   t i m e s t a m p   N U L L   D E F A U L T   C U R R E N T _ T I M E S T A M P , 
 
     ` i s _ a p p r o v e d `   t i n y i n t ( 1 )   D E F A U L T   ' 0 ' , 
 
     P R I M A R Y   K E Y   ( ` i d ` ) 
 
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 7   D E F A U L T   C H A R S E T = u t f 8 m b 4   C O L L A T E = u t f 8 m b 4 _ 0 9 0 0 _ a i _ c i ; 
 
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ; 
 
 
 
 - - 
 
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` c o m m e n t s ` 
 
 - - 
 
 
 
 L O C K   T A B L E S   ` c o m m e n t s `   W R I T E ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` c o m m e n t s `   D I S A B L E   K E Y S   * / ; 
 
 I N S E R T   I N T O   ` c o m m e n t s `   V A L U E S   ( 1 , ' F a n   D e   Z o o ' , ' B o n j o u r   !   S u p e r   E x p %® r i e n c e   !   j e   v a i s   s u r e m e n t   r e v e n i r   u n   b o n   m i l l i e r s   d e   f o i s   ! ' , ' 2 0 2 4 - 0 7 - 1 0   1 3 : 0 1 : 3 1 ' , 0 ) , ( 2 , ' L %® o n a r d   S a u v a g e ' , '   L e   z o o   A r c a d i a   a   %® t %®   u n e   e x p %® r i e n c e   d %® l i c i e u s e   p o u r   n o t r e   f a m i l l e .   L e   p e r s o n n e l   %® t a i t   s y m p a t h i q u e   e t   l e s   i n s t a l l a t i o n s   b i e n   e n t r e t e n u e s . ' , ' 2 0 2 4 - 0 7 - 1 0   1 3 : 0 6 : 2 6 ' , 1 ) , ( 3 , ' C l a r a   L o u t r e ' , ' N o t r e   v i s i t e   a u   z o o   A r c a d i a   a   d %® p a s s %®   n o s   a t t e n t e s .   L e s   e f f o r t s   d e   c o n s e r v a t i o n   e t   l e s   p r o g r a m m e s   %® d u c a t i f s   %® t a i e n t   i m p r e s s i o n n a n t s . ' , ' 2 0 2 4 - 0 7 - 1 0   1 3 : 0 6 : 5 0 ' , 1 ) , ( 4 , ' P a u l i n e   G r i s o u i l l e ' , ' N o t r e   v i s i t e   a u   z o o   A r c a d i a   a   %® t %®   u n e   e x p %® r i e n c e   m e r v e i l l e u s e   !   L a   d i v e r s i t %®   d e s   a n i m a u x   e t   l e s   e x p o s i t i o n s   i n t e r a c t i v e s   o n t   r e n d u   n o t r e   v i s i t e   i n o u b l i a b l e . ' , ' 2 0 2 4 - 0 7 - 1 0   1 3 : 0 7 : 1 8 ' , 1 ) , ( 5 , ' M r   T e s t ' , ' C e c i   e s t   u n   t e s t   p o u r   v o i r   l e   b o n   f o n c t i o n n e m e n t   d u   s y s t %¿ m e   d \ ' a v i s ! ' , ' 2 0 2 4 - 0 7 - 1 1   1 1 : 1 5 : 0 2 ' , 1 ) , ( 6 , ' M m e   T e s t ' , ' C e c i   e s t   u n   t e s t   q u i   f a i t   s u i t e   a u   n e t t o y a g e   d u   c o d e ' , ' 2 0 2 4 - 0 7 - 1 1   1 4 : 1 4 : 3 4 ' , 1 ) ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` c o m m e n t s `   E N A B L E   K E Y S   * / ; 
 
 U N L O C K   T A B L E S ; 
 
 
 
 - - 
 
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` s e r v i c e s ` 
 
 - - 
 
 
 
 D R O P   T A B L E   I F   E X I S T S   ` s e r v i c e s ` ; 
 
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ; 
 
 / * ! 5 0 5 0 3   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8 m b 4   * / ; 
 
 C R E A T E   T A B L E   ` s e r v i c e s `   ( 
 
     ` I D `   i n t   N O T   N U L L   A U T O _ I N C R E M E N T , 
 
     ` T I T R E `   v a r c h a r ( 2 5 5 )   N O T   N U L L , 
 
     ` D E S C R I P T I O N `   t e x t , 
 
     ` L O G O _ P A T H `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     P R I M A R Y   K E Y   ( ` I D ` ) 
 
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 7   D E F A U L T   C H A R S E T = u t f 8 m b 4   C O L L A T E = u t f 8 m b 4 _ 0 9 0 0 _ a i _ c i ; 
 
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ; 
 
 
 
 - - 
 
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` s e r v i c e s ` 
 
 - - 
 
 
 
 L O C K   T A B L E S   ` s e r v i c e s `   W R I T E ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` s e r v i c e s `   D I S A B L E   K E Y S   * / ; 
 
 I N S E R T   I N T O   ` s e r v i c e s `   V A L U E S   ( 4 , ' V i s i t e   d e s   h a b i t a t s   a v e c   u n   g u i d e   ( g r a t u i t ) ' , ' E x p l o r e z   n o s   h a b i t a t s   f a s c i n a n t s   e n   c o m p a g n i e   d e   g u i d e s   e x p %® r i m e n t %® s .   A p p r e n e z - e n   d a v a n t a g e   s u r   n o s   r %® s i d e n t s   %á   p l u m e s   e t   %á   %® c a i l l e s   t o u t   e n   d %® c o u v r a n t   n o s   e f f o r t s   d e   c o n s e r v a t i o n   e t   d e   p r %® s e r v a t i o n   d e   l a   b i o d i v e r s i t %® . ' , ' i m g / i c o n e s / g u i d e . p n g ' ) , ( 5 , ' R e s t a u r a t i o n   s u r   p l a c e   ' , ' D %® g u s t e z   u n e   v a r i %® t %®   d e   d %® l i c e s   c u l i n a i r e s   t o u t   e n   p r o f i t a n t   d e   l a   b e a u t %®   n a t u r e l l e   d e   n o t r e   p a r c .   N o s   o p t i o n s   d e   r e s t a u r a t i o n   s a u r o n t   c o m b l e r   t o u t e s   v o s   e n v i e s ,   q u e   v o u s   s o y e z   e n   q u %¬ t e   d \ ' u n e   c o l l a t i o n   r a p i d e   o u   d \ ' u n   r e p a s   c o m p l e t   e n   f a m i l l e . ' , ' i m g / i c o n e s / r e s t a u . p n g ' ) , ( 6 , ' V i s i t e   d u   z o o   e n   p e t i t   t r a i n ' , ' M o n t e z   %á   b o r d   d e   n o t r e   p e t i t   t r a i n   e t   l a i s s e z - v o u s   t r a n s p o r t e r   %á   t r a v e r s   l e s   d i f f %® r e n t s   s e c t e u r s   d u   z o o .   P r o f i t e z   d \ ' u n e   p e r s p e c t i v e   u n i q u e   t o u t   e n   a p p r e n a n t   d e s   f a i t s   i n t %® r e s s a n t s   s u r   n o s   a n i m a u x   e t   l e u r   h a b i t a t   n a t u r e l . ' , ' i m g / i c o n e s / t r a i n . p n g ' ) ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` s e r v i c e s `   E N A B L E   K E Y S   * / ; 
 
 U N L O C K   T A B L E S ; 
 
 
 
 - - 
 
 - -   T a b l e   s t r u c t u r e   f o r   t a b l e   ` u s e r s ` 
 
 - - 
 
 
 
 D R O P   T A B L E   I F   E X I S T S   ` u s e r s ` ; 
 
 / * ! 4 0 1 0 1   S E T   @ s a v e d _ c s _ c l i e n t           =   @ @ c h a r a c t e r _ s e t _ c l i e n t   * / ; 
 
 / * ! 5 0 5 0 3   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   u t f 8 m b 4   * / ; 
 
 C R E A T E   T A B L E   ` u s e r s `   ( 
 
     ` i d `   i n t   N O T   N U L L   A U T O _ I N C R E M E N T , 
 
     ` e m a i l `   v a r c h a r ( 5 0 )   D E F A U L T   N U L L , 
 
     ` m o t d e p a s s e `   v a r c h a r ( 2 5 5 )   D E F A U L T   N U L L , 
 
     ` n o m `   v a r c h a r ( 5 0 )   D E F A U L T   N U L L , 
 
     ` p r e n o m `   v a r c h a r ( 5 0 )   D E F A U L T   N U L L , 
 
     ` c h o i x `   e n u m ( ' V E T ' , ' E M P ' , ' D I R ' )   N O T   N U L L   D E F A U L T   ' V E T ' , 
 
     P R I M A R Y   K E Y   ( ` i d ` ) , 
 
     U N I Q U E   K E Y   ` e m a i l `   ( ` e m a i l ` ) 
 
 )   E N G I N E = I n n o D B   A U T O _ I N C R E M E N T = 7   D E F A U L T   C H A R S E T = u t f 8 m b 4   C O L L A T E = u t f 8 m b 4 _ 0 9 0 0 _ a i _ c i ; 
 
 / * ! 4 0 1 0 1   S E T   c h a r a c t e r _ s e t _ c l i e n t   =   @ s a v e d _ c s _ c l i e n t   * / ; 
 
 
 
 - - 
 
 - -   D u m p i n g   d a t a   f o r   t a b l e   ` u s e r s ` 
 
 - - 
 
 
 
 L O C K   T A B L E S   ` u s e r s `   W R I T E ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` u s e r s `   D I S A B L E   K E Y S   * / ; 
 
 I N S E R T   I N T O   ` u s e r s `   V A L U E S   ( 2 , ' d i r e c t i o n @ z o o a r c a d i a . f r ' , ' $ 2 b $ 1 0 $ Y 5 A E 9 0 U C s P 5 5 v 2 m Z Z D 9 b U . C w 1 8 b Y p H Y F r b 8 Y Y N 0 d / / B u z S D f f R p A u ' , ' D i r e c t o r ' , ' J o s ' , ' D I R ' ) , ( 3 , ' j o s e t t e @ z o o a r c a d i a . f r ' , ' $ 2 b $ 1 0 $ a . F Y 8 6 R B 6 L o G g w a r E F M n 5 u d N s 3 v o P 4 E i G U u y 6 p x k x y r 4 3 y 6 L T P g Q S ' , ' A s s i s t a n t e ' , ' J o s e t t e ' , ' E M P ' ) , ( 4 , ' t a u r i n e @ z o o a r c a d i a . f r ' , ' $ 2 b $ 1 0 $ B T M b 6 A 7 I H M u Z q q O m c H A N x . H R G H 5 o C q Z n q M D o N u g T W K i 9 I H J H G 2 g j y ' , ' B u l l y ' , ' T a u r i n e ' , ' V E T ' ) , ( 5 , ' J e a n p l o i @ z o o a r c a d i a . f r ' , ' $ 2 b $ 1 0 $ n q S 7 p S 5 u r i 4 i C N 1 I F g / E c u i C 8 d b m x w R f e 5 s Y k I f O b B A z R 4 s 1 o 7 M 0 y ' , ' P l o i ' , ' J e a n ' , ' E M P ' ) , ( 6 , ' t e s t @ z o o a r c a d i a . f r ' , ' $ 2 b $ 1 0 $ H x F l T V T w e q j s N w b 5 J g 8 P U . 3 8 6 y H O V 6 e B t 8 v B r Z J S L o g y 0 u T R 1 H R N 6 ' , ' T e s t ' , ' M r T e s t ' , ' E M P ' ) ; 
 
 / * ! 4 0 0 0 0   A L T E R   T A B L E   ` u s e r s `   E N A B L E   K E Y S   * / ; 
 
 U N L O C K   T A B L E S ; 
 
 / * ! 4 0 1 0 3   S E T   T I M E _ Z O N E = @ O L D _ T I M E _ Z O N E   * / ; 
 
 
 
 / * ! 4 0 1 0 1   S E T   S Q L _ M O D E = @ O L D _ S Q L _ M O D E   * / ; 
 
 / * ! 4 0 0 1 4   S E T   F O R E I G N _ K E Y _ C H E C K S = @ O L D _ F O R E I G N _ K E Y _ C H E C K S   * / ; 
 
 / * ! 4 0 0 1 4   S E T   U N I Q U E _ C H E C K S = @ O L D _ U N I Q U E _ C H E C K S   * / ; 
 
 / * ! 4 0 1 0 1   S E T   C H A R A C T E R _ S E T _ C L I E N T = @ O L D _ C H A R A C T E R _ S E T _ C L I E N T   * / ; 
 
 / * ! 4 0 1 0 1   S E T   C H A R A C T E R _ S E T _ R E S U L T S = @ O L D _ C H A R A C T E R _ S E T _ R E S U L T S   * / ; 
 
 / * ! 4 0 1 0 1   S E T   C O L L A T I O N _ C O N N E C T I O N = @ O L D _ C O L L A T I O N _ C O N N E C T I O N   * / ; 
 
 / * ! 4 0 1 1 1   S E T   S Q L _ N O T E S = @ O L D _ S Q L _ N O T E S   * / ; 
 
 
 
 - -   D u m p   c o m p l e t e d   o n   2 0 2 4 - 0 7 - 1 4   1 3 : 4 3 : 2 2 
 
 