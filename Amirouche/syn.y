%token 
diese                           bib_process 
bib_loop                        bib_array                       
dollar                          mc_programme                    
idf                             accolade_ouvrante               
accolade_fermante               mc_var                          
mc_integer                      mc_real                        
mc_char                         mc_string                      
mc_const                        quatre_points                   
separateur_var                  crochet_ouvrant                 
crochet_fermant                 egale                           
taille_tab                      entier                          
real                            caractere                       
str                             guillemet                       
apostrophe                      affectation                     
mc_read                         parenthese_ouvrante             
parenthese_fermante             signe_de_formatage_integer      
signe_de_formatage_real         signe_de_formatage_string       
signe_de_formatage_char         barre_verticale                 
arobase                         mc_write                        
mc_while                        mc_inf                          
mc_sup                          mc_eg                           
mc_infe                         mc_supe                         
mc_diff                         mc_execut                       
mc_if                           mc_end_if                       
mc_else                         addition                        
multiplication                  soustraction                    
division                        fin_ligne

%%
S: FIN BIB mc_programme idf FIN accolade_ouvrante FIN accolade_fermante
                            {
                                printf("prog syntaxiquement correct");
                                YYACCEPT;
                            }
;
BIB: diese NOM_BIB dollar fin_ligne FIN BIB 
   | FIN
;
NOM_BIB: bib_process
       | bib_loop 
       | bib_array
;
FIN: fin_ligne FIN
   |
;

%%

main () 
{
    yyparse();
}
yywrap(){}
