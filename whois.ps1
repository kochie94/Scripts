<#  . S Y N O P S I S 
 D o m a i n   n a m e   W h o I s 
 . D E S C R I P T I O N 
 P e r f o r m s   a   d o m a i n   n a m e   l o o k u p   a n d   r e t u r n s   i n f o r m a t i o n   s u c h   a s 
 d o m a i n   a v a i l a b i l i t y   ( c r e a t i o n   a n d   e x p i r a t i o n   d a t e ) , 
 d o m a i n   o w n e r s h i p ,   n a m e   s e r v e r s ,   e t c . . 
 . P A R A M E T E R   d o m a i n 
 S p e c i f i e s   t h e   d o m a i n   n a m e   ( e n t e r   t h e   d o m a i n   n a m e   w i t h o u t   h t t p : / /   a n d   w w w   ( e . g .   p o w e r - s h e l l . c o m ) ) 
 . E X A M P L E 
 W h o I s   - d o m a i n   p o w e r - s h e l l . c o m   
 w h o i s   p o w e r - s h e l l . c o m 
 . N O T E S 
 F i l e   N a m e :   w h o i s . p s 1 
 A u t h o r :   N i k o l a y   P e t k o v 
 B l o g :   h t t p : / / p o w e r - s h e l l . c o m 
 L a s t   E d i t :   1 2 / 2 0 / 2 0 1 4 
 . L I N K 
 h t t p : / / p o w e r - s h e l l . c o m 
#>

function  W h o I s () { 
 
 p a r a m   (                                  [ P a r a m e t e r ( M a n d a t o r y = $ T r u e ,                                                         H e l p M e s s a g e = ' P l e a s e   e n t e r   d o m a i n   n a m e   ( e . g .   m i c r o s o f t . c o m ) ' ) ]                                                         [ s t r i n g ] $ d o m a i n                   )  
 W r i t e - H o s t   " C o n n e c t i n g   t o   W e b   S e r v i c e s   U R L . . . "   - F o r e g r o u n d C o l o r   G r e e n  
 t r y   {  
 # R e t r i e v e   t h e   d a t a   f r o m   w e b   s e r v i c e   W S D L  
 I f   ( $ w h o i s   =   N e w - W e b S e r v i c e P r o x y   - u r i   " h t t p : / / w w w . w e b s e r v i c e x . n e t / w h o i s . a s m x ? W S D L " )   { W r i t e - H o s t   " O k "   - F o r e g r o u n d C o l o r   G r e e n }  
 e l s e   { W r i t e - H o s t   " E r r o r "   - F o r e g r o u n d C o l o r   R e d }  
 W r i t e - H o s t   " G a t h e r i n g   $ d o m a i n   d a t a . . . "   - F o r e g r o u n d C o l o r   G r e e n  
 # R e t u r n   t h e   d a t a  
 ( ( $ w h o i s . g e t w h o i s ( " = $ d o m a i n " ) ) . S p l i t ( " < < < " ) [ 0 ] )  
 }   c a t c h   {  
 W r i t e - H o s t   " P l e a s e   e n t e r   v a l i d   d o m a i n   n a m e   ( e . g .   m i c r o s o f t . c o m ) . "   - F o r e g r o u n d C o l o r   R e d }  
 }   # e n d   f u n c t i o n   W h o I s  
