%{
	#include "syn.tab.h"	
	int nb_ligne=1;
%}
lettre       [A-Za-z]
chiffre      [0-9]
idf          [A-Z]({lettre}|{chiffre})*
cst          {chiffre}+
int          0|[1-3][0-2][0-7][0-6][0-7]|[1-9]([0-9]{0,3})|\([+\-]([1-3][0-2][0-7][0-6][0-7]|[1-9]([0-9]{0,3}))\)|\(-32768\)
real         [0-9]\.[0-9]|[1-9][0-9]*\.[0-9]*[1-9]|[0-9]\.[0-9]*[1-9]|[1-9][0-9]*\.[0-9]|\([+\-]([0-9]\.[0-9]|[1-9][0-9]*\.[0-9]*[1-9]|[0-9]\.[0-9]*[1-9]|[1-9][0-9]*\.[0-9])\)
char         \'[A-Za-z0-9]\'
taille_tab   \[[1-9]{chiffre}*\]
string         \"[^"]*\"
commentaire   "/*".*"*/" 




%%

##             return mc_import;
PROCESS        return bib_process;
LOOP           return bib_loop;
ARRAY          return bib_array;
Programme      return mc_programme;
\$             return dollar;


VAR            return mc_var; 
INTEGER        return mc_integer;
REAL           return mc_real;
CHAR           return mc_char;
STRING         return mc_string;
CONST          return mc_const;
{int}          return entier;
{real}         return real;
{taille_tab}   return taille_tab;
{char}         return caractere;





READ         return mc_read;
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
{idf}        return IDF;
{commentaire}  return commentaire;
{string}       return string; 


::          return quatre_points;
"//"        return separateur_var;
\(          return parenthese_ouvrante;
\)          return parenthese_fermante;
\%          return signe_de_formatage_real;
\#          return signe_de_formatage_string;
\&          return signe_de_formatage_char;
\"          return guillemet ;




\|          return barre_verticale;
@           return arobase;
\+          return addition;
\*          return multiplication;
\-          return soustraction;
\/          return division;
":="        return affectation;
\[          return crochet_ouvrant;
\]	        return crochet_fermant;
\{           return accolade_ouvrante;
\}           return accolade_fermante;


[ \t {commentaire}]
\n    { nb_ligne++; return fin_ligne;}
.  {printf("erreur lexicale a la ligne %d \n",nb_ligne);}














