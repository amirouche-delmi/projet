%token 
mc_import
bib_process
bib_loop
bib_array
fin_instruction              
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
taille_tab
entier
real
caractere
str
affectation
mc_read
parenthese_ouvrante
parenthese_fermante
parenthese_ouvrante_guillemet
signe_de_formatage_integer
signe_de_formatage_real
signe_de_formatage_string
signe_de_formatage_char
guillemet
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
pvg_fin
mc_if
mc_end_if
mc_else
addition
multiplication
soustraction
division

%%
S: mc_import BIB fin_instruction
                    {
                        printf("prog syntaxiquement correct");
                        YYACCEPT;
                    }
;
BIB: bib_process|bib_loop|bib_array;
%%
int yyerror(char *msg)
{ 
    printf("%s error syntaxique");
    return 1;  
}
main () 
{
    yyparse();
}
yywrap(){}
