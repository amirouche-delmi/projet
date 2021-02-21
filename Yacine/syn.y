%{
#include <stdio.h>
#define YYSTYPE int
int yyparse();
int yylex();
int yyerror(char *t);
%}


%token 
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
mc_read
mc_char
mc_string
mc_const
entier
real
caractere
string
taille_tab
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
affectation
barre_verticale
arobase
addition
multiplication
soustraction
division
fin_ligne
crochet_ouvrant
crochet_fermant
accolade_ouvrante
accolade_fermante

%start S
%%

S:  Dec_bib P  {  
            printf("Declaration  syntaxiquement correcte");
             YYACCEPT;
}
;

Dec_bib : mc_import Nom_Bib dollar fin_ligne FIN  Dec_bib | 

;
Nom_Bib:bib_array|bib_loop|bib_process 
;

P : mc_programme  IDF accolade_ouvrante FIN  D  LIST_INST   accolade_fermante 
;




D: CONSTANTE   VARI | VARI  CONSTANTE  |VARI | CONSTANTE 
;



VARI :    mc_var FIN DEC_VAR  
;

DEC_VAR : TYPE quatre_points LISTE_IDF dollar FIN DEC_VAR | TYPE quatre_points LISTE_IDF dollar FIN
;

LISTE_IDF : IDF taille_tab SEP LISTE_IDF| IDF SEP LISTE_IDF | IDF| IDF taille_tab   
;


TYPE :mc_integer | mc_char | mc_string | mc_real 
;


SEP : separateur_var | 
;





CONSTANTE : mc_const FIN DEC_CONST 
;
 
DEC_CONST :  TYPE  quatre_points LISTE_IDF_CONST  dollar FIN DEC_CONST | TYPE quatre_points LISTE_IDF_CONST  dollar FIN
;

LISTE_IDF_CONST: IDF affectation VALEUR SEP LISTE_IDF_CONST | IDF affectation VALEUR  
;
VALEUR : entier | caractere |   string  | real
;





AFFECTATION :  IDF affectation expression dollar  FIN|  IDF taille_tab affectation expression dollar  FIN
;


ENTREE : mc_read parenthese_ouvrante  string barre_verticale arobase IDF parenthese_fermante FIN
;

SF :   signe_de_formatage_char  |  signe_de_formatage_real   |  signe_de_formatage_string 
;


SORTIE :  mc_write parenthese_ouvrante string barre_verticale IDF parenthese_fermante  FIN 


BOUCLE : mc_while parenthese_ouvrante  COND parenthese_fermante FIN accolade_ouvrante FIN LIST_INST  accolade_fermante FIN 
;
COND : expression OPERATEUR_LOG expression
;
expression : IDF OPERATEUR_ARITH expression| VALEUR_NUM OPERATEUR_ARITH expression| IDF taille_tab OPERATEUR_ARITH expression|IDF | IDF taille_tab | VALEUR_NUM
;
OPERATEUR_ARITH : addition | multiplication | division | soustraction
;
VALEUR_NUM: entier |real
;
OPERATEUR_LOG :  mc_inf|mc_eg||mc_infe| mc_supe| mc_diff;
;


LIST_INST:   BOUCLE LIST_INST | AFFECTATION  LIST_INST |  CONDITION LIST_INST | commentaire FIN LIST_INST| ENTREE LIST_INST | SORTIE |
;





CONDITION: mc_execut  FIN  AFFECTATION IF  ELSE mc_end_if  dollar   FIN
;
IF: mc_if parenthese_ouvrante COND parenthese_fermante FIN 
;
ELSE: mc_else FIN mc_execut FIN  LIST_INST  |                 
;



FIN :fin_ligne FIN |  
;



%%
int yyerror(char *t) {
    printf("\n test erreur : %s\n",t);
    return 0;
}

int main(void) {
        printf("\n test 1" );
    yyparse();
            printf("\n test 2" );
    return 0;
}
