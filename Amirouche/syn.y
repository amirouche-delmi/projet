%token 
diese                           bib_process 
bib_loop                        bib_array                       
dollar                          mc_programme                    
idf                             accolade_o               
accolade_f                      mc_var                          
mc_integer                      mc_real                        
mc_char                         mc_string                      
mc_const                        quatre_points                   
separateur_var                  crochet_o                
crochet_f                       egale                           
taille_tab                      entier                          
real                            caractere                       
string                          guillemet                       
apostrophe                      affectation                     
mc_read                         parenthese_o             
parenthese_f                    signe_de_formatage_integer      
signe_de_formatage_real         signe_de_formatage_string       
signe_de_formatage_char         barre_v                 
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
S: FIN BIB mc_programme idf FIN accolade_o FIN DEC FIN LIST_INST FIN accolade_f
                            {
                                printf("prog syntaxiquement correct");
                                YYACCEPT;
                            }
;
BIB: diese NOM_BIB dollar fin_ligne FIN BIB | FIN ;

NOM_BIB: bib_process | bib_loop | bib_array ;

FIN: fin_ligne FIN | ;


LIST_INST: INST FIN LIST_INST | ;

INST: AFFECTATION | ENT | SOR | BOUCLE | CONDITION | ;

CONDITION: mc_execut FIN LIST_INST IF ELSE mc_end_if ;

IF: mc_if parenthese_o COND parenthese_f FIN ;

ELSE: mc_else FIN mc_execut FIN LIST_INST |





BOUCLE: mc_while parenthese_o COND parenthese_f FIN B_INST ;

COND: M_D_AFF O_LOGIQUE M_D_AFF ; 

B_INST: accolade_o FIN LIST_INST accolade_f ;

O_LOGIQUE: mc_inf | mc_sup | mc_eg | mc_infe | mc_supe | mc_diff ; 





ENT: mc_read parenthese_o string barre_v arobase idf parenthese_f dollar ;

SOR: mc_write parenthese_o string barre_v LIST_IDF parenthese_f dollar ;

LIST_IDF: idf separateur_var LIST_IDF | idf ;
 
 



AFFECTATION: M_G_AFF affectation M_D_AFF dollar FIN ;

M_G_AFF: idf | idf taille_tab ;

M_D_AFF: VALEURE | idf taille_tab | idf | EXP_ARITH ;

EXP_ARITH: EXP EXP_ARITH | EXP ;

EXP: ADDITION | SOUSTRACTION | MULTIPLICATION | DIVISION ;

ADDITION: M_G_D_ARITH addition M_G_D_ARITH ;

SOUSTRACTION: M_G_D_ARITH soustraction M_G_D_ARITH ;

MULTIPLICATION: M_G_D_ARITH multiplication M_G_D_ARITH ;

DIVISION: M_G_D_ARITH division M_G_D_ARITH ;

M_G_D_ARITH: NOMBRE | idf taille_tab | idf | ;

NOMBRE: entier | real ;




DEC: DEC_VAR DEC_CONST | DEC_CONST DEC_VAR | DEC_VAR | DEC_CONST | ;

DEC_VAR: mc_var FIN LIST_VAR ;

LIST_VAR: TYPE quatre_points LIST_IDF_VAR dollar FIN LIST_VAR | TYPE quatre_points LIST_IDF_VAR dollar FIN ;

LIST_IDF_VAR: idf TTAB separateur_var LIST_IDF_VAR | idf TTAB ;

TTAB: taille_tab | ;

DEC_CONST: mc_const FIN LIST_CONST ;

LIST_CONST: TYPE quatre_points LIST_IDF_CONST dollar FIN LIST_CONST | TYPE quatre_points LIST_IDF_CONST dollar FIN ;

LIST_IDF_CONST: idf affectation VALEURE separateur_var LIST_IDF_CONST | idf affectation VALEURE ;

VALEURE: entier | real | string | apostrophe caractere apostrophe ;

TYPE: mc_integer | mc_real | mc_string | mc_char ;



%%

main () 
{
    yyparse();
}
yywrap(){}
