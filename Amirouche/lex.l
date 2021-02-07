%{
    #include "syn.tab.h"
    int nb_ligne = 1;
%}

idf         [A-Z][0-9a-zA-Z]{0,9};
taille_tab  \[[1-9]([0-9]*)\];
int         ((0+)|([12]([0-9]{4}))|(3[01]([0-9]{3}))|(32[0-6]([0-9]{2}))|(327[0-5][0-9])|(3276[0-7])|([1-9]([0-9]{0,3})))|(\([+-]((0+)|([1-9]([0-9]{0,3}))|([12]([0-9]{4}))|(3[01]([0-9]{3}))|(32[0-6]([0-9]{2}))|(327[0-5][0-9])|(3276[0-7]))\))|(\(-32768\));
real        (\+?[0-9]+\.[0-9]+)|(\(\-[0-9]+\.[0-9]+\)); 
char        .;
str         .*;
commentaire  \/\*(.|\n)*\*\/;

%%

##             return mc_import;
PROCESS        return bib_process;
LOOP           return bib_loop;
ARRAY          return bib_array;             
programme      return mc_programme;
{idf}          return idf;
\{             return accolade_ouvrante;
\}             return accolade_fermante;
VAR            return mc_var; 
INTEGER        return mc_integer;
REAL           return mc_real;
CHAR           return mc_char;
STRING         return mc_string;
CONST          return mc_const;
"::"           return quatre_points;
"//"           return separateur_var;
{taille_tab}   return taille_tab;
{int}          return entier;
{real}         return real;
{char}         return caractere;
{str}          return str;
":="           return affectation;
READ           return mc_read;
\(             return parenthese_ouvrante;
\)             return parenthese_fermante;
\"             return guillemet;
\$             return dollar;
\%             return signe_de_formatage_real;
\#             return signe_de_formatage_string;
\&             return signe_de_formatage_char;
\|             return barre_verticale;
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
[ \t{commentaire}]
\n             {nb_ligne++; return fin_ligne;}
