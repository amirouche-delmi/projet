%{
	#include "syn.tab.h"
	int nb_ligne=1;
%}
lettre      [A-Za-z];
chiffre     [0-9];  
IDF         [A-Z]({lettre}|{chiffre}){0,9};
cst         {chiffre}+;
int         ((^[1-3][0-2][0-7][0-6][0-7]$|^[1-9][0-9][0-9][0-9]$|^[1-9][0-9][0-9]$|^[1-9][0-9]$|^[0-9]$))|\(-[1-3][0-2][0-7][0-6][0-8]\)|\(-[1-9][0-9][0-9][0-9]\)|\(-[1-9][0-9][0-9]\)|\(-[1-9][0-9]\)|\(-[1-9]\);
real      \(-{chiffre}\d*\.{chiffre}*[1-9]\)|\(-{chiffre}\.{chiffre}*[1-9]\)|{chiffre}\.{chiffre}*[1-9]|[1-9]\d*\.{chiffre}*[1-9];
char        .;
str         [.\n]*;
commentaire  "/*"{str}"*/";
taille_tab  \[[1-9][{chiffre}]*\];

%%

##             return mc_import;
PROCESS        return bib_process;
LOOP           return bib_loop;
ARRAY          return bib_array;
Programme      return mc_programme;
\$" "*\n       {nb_ligne++;
               return fin_instruction;}


VAR            return mc_var; 
INTEGER        return mc_integer;
REAL           return mc_real;
CHAR           return mc_char;
STRING         return mc_string;
CONST          return mc_const;

{int}          return entier;
{real}         return real;
{char}         return caractere;
{string}       return string;
{taille_tab}   return taille_tab;
{idf}          return identificateur;


WRITE        return mc_write;
while        return mc_while;
INF          return mc_inf;
SUP          return mc_sup;
EG           return mc_eg;
INFE         return mc_infe;
SUPE         return mc_supe;
DIFF         return mc_diff;
EXECUT       return mc_execut;
IF           return mc_if;
END_IF       return mc_end_if;
ELSE         return mc_else;

::          return quatre_points;
//          return separateur_var;
\(          return parenthese_ouvrante;
\)          return parenthese_fermante;
\(\"        return parenthese_ouvrante_guillemet;
\$          return signe_de_formatage_integer;
\%          return signe_de_formatage_real;
\#          return signe_de_formatage_string;
\&          return signe_de_formatage_char;
\"          return guillemet;
\|          return barre_verticale;
@           return arobase; 
+           return addition;
*           return multiplication;
-           return soustraction;
/           return division;

[ \t{commentaire}]
\n             nb_ligne++;
.{printf("erreur lexicale a la ligne %d \n"nb_ligne);}













