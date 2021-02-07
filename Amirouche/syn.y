%token 
mc_import
bib_process
bib_array
bib_loop
mc_programme
idf
accolade_ouvrante
accolade_fermante
mc_var
mc_integer
mc_real
mc_char
mc_string
mc_const
quatre_points
separateur_var
crochet_ouvrant
crochet_fermant
taille_tab
entier
real
caractere
str
affectation
mc_read
parenthese_ouvrante
parenthese_fermante
guillemet
dollar
signe_de_formatage_real
signe_de_formatage_string
signe_de_formatage_char
barre_verticale
arobase
mc_write
mc_while
mc_inf
mc_sup
mc_eg
mc_infe
mc_supe
mc_diff
mc_execut
mc_if
mc_end_if
mc_else
addition
multiplication
soustraction
division
fin_ligne

%%
S: mc_import BIB dollar fin_ligne NOM_PROG
                            {
                                printf("prog syntaxiquement correct");
                                YYACCEPT;
                            }
;
BIB: bib_process|bib_loop|bib_array;
NOM_PROG: mc_programme
                            {

                            }
;

%%

main () 
{
    yyparse();
}
yywrap(){}
