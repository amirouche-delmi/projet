%token 

lettre
chiffre
IDF 

commentaire
mc_import
bib_process
bib_loop
bib_array
mc_programme
dollar
mc_var
mc_integer
mc_real
mc_char
mc_string
mc_const
entier
real
caractere
string
taille_tab
identificateur
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
quatre_points
separateur_var
parenthese_ouvrante
parenthese_fermante
signe_de_formatage_real
signe_de_formatage_string
signe_de_formatage_char
guillemet
barre_verticale
arobase
addition
multiplication
soustraction
division
crochet_ouvrant
crochet_fermant
accolade_ouvrante
accolade_fermante
% start S
%%

S:  mc_programme identificateur accolade_ouvrante accolade_fermante{  
            printf("Declaration  syntaxiquement correcte");
             YYACCEPT;
}
;

Dec_bib : mc_import Nom_Bib dollar Dec_bib 

;


Nom_Bib:bib_array|bib_loop|bib_process 
;

P : mc_programme identificateur accolade_ouvrante accolade_fermante
;

%%
main ()
{
yyparse();
}
yywrap()
{}