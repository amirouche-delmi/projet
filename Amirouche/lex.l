%{
    #include "syn.tab.h"
    int nb_ligne = 1;
%}

idf         [A-Z][A-Za-z0-9]{0,9}
taille_tab  \[[ \t]*[1-9][0-9]*[ \t]*\]
entier      0|[1-3][0-2][0-7][0-6][0-7]|[1-9]([0-9]{0,3})|\([+\-]([1-3][0-2][0-7][0-6][0-7]|[1-9]([0-9]{0,3}))\)|\(-32768\)
real        [0-9]\.[0-9]|[1-9][0-9]*\.[0-9]*[1-9]|[0-9]\.[0-9]*[1-9]|[1-9][0-9]*\.[0-9]|\([+\-]([0-9]\.[0-9]|[1-9][0-9]*\.[0-9]*[1-9]|[0-9]\.[0-9]*[1-9]|[1-9][0-9]*\.[0-9])\)
caractere   [A-Za-z0-9]
str         \"[^"]*\"
commentaire "/*".*"*/"

%%

##             return diese;
PROCESS        return bib_process;
LOOP           return bib_loop;
ARRAY          return bib_array;
\$             return dollar;             
Programme      return mc_programme;

\{             return accolade_o;
\}             return accolade_f;
VAR            return mc_var; 
INTEGER        return mc_integer;
REAL           return mc_real;
CHAR           return mc_char;
STRING         return mc_string;
CONST          return mc_const;
"::"           return quatre_points;
"//"           return separateur_var;
\[             return crochet_o;
\]             return crochet_f;
\=             return egale;
{taille_tab}   return taille_tab;
{entier}       return entier;
{real}         return real;
{caractere}    return caractere;
{str}          return string;
{commentaire}  
\"             return guillemet;
\'             return apostrophe;

":="           return affectation;
READ           return mc_read;
\(             return parenthese_o;
\)             return parenthese_f;
\;             return signe_de_formatage_integer;
\%             return signe_de_formatage_real;
\?             return signe_de_formatage_string;
\&             return signe_de_formatage_char;
\|             return barre_v;
\@             return arobase;

WRITE          return mc_write;
while          return mc_while;
INF            return mc_inf;
SUP            return mc_sup;
EG             return mc_eg;
INFE           return mc_infe;
SUPE           return mc_supe;
DIFF           return mc_diff;
EXECUT         return mc_execut;
IF             return mc_if;
END_IF         return mc_end_if;
ELSE           return mc_else;
\+             return addition;
\*             return multiplication;
\-             return soustraction;
\/             return division;
{idf}          return idf;

[ \t]
\n             {nb_ligne++; return fin_ligne;}
.              printf("erreur lexicale %s a la ligne %d \n", yytext, nb_ligne);
