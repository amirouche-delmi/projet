%{
    #include "syn.tab.h"
    int nb_ligne = 1;
%}
lettre      [A-Za-z];
chiffre     [0-9];  
IDF         [A-Z]({lettre}|{chiffre}){0,9};
taille_tab  \[[1-9][{chiffre}]*\];
int         ((0+)|([1-9]({chiffre}{0,3}))|([12]({chiffre}{4}))|(3[01]({chiffre}{3}))|(32[0-6]({chiffre}{2}))|(327[0-5]{chiffre})|(3276[0-7]))|(\([+-]((0+)|([1-9]({chiffre}{0,3}))|([12]({chiffre}{4}))|(3[01]({chiffre}{3}))|(32[0-6]({chiffre}{2}))|(327[0-5]{chiffre})|(3276[0-7]))\))|(\(-32768\));
real        (\+?{chiffre}+"."{chiffre}+)|(-\({chiffre}+"."{chiffre}+\)); 
char        .;
str         [.\n]*;
commentaire  "/*"{str}"*/";

%%

##             return mc_import;
PROCESS        return bib_process;
LOOP           return bib_loop;
ARRAY          return bib_array;
\$" "*\n       {nb_ligne++;
               return fin_instruction;}
               
programme      return mc_programme;
{IDF}          return idf;
"{"            return accolade_ouvrante;
"}"            return accolade_fermante;

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
\(\"           return parenthese_ouvrante_guillemet;
\$             return signe_de_formatage_integer;
\%             return signe_de_formatage_real;
\#             return signe_de_formatage_string;
\&             return signe_de_formatage_char;
\"             return guillemet;
\|             return barre_verticale;
"@"            return arobase; 
"WRITE"        return mc_write;
"while"        return mc_while;
"INF"          return mc_inf;
"SUP"          return mc_sup;
"EG"           return mc_eg;
"INFE"         return mc_infe;
"SUPE"         return mc_supe;
"DIFF"         return mc_diff;
"EXECUT"       return mc_execut;
\;" "*\n       {nb_ligne++;
               return pvg_fin;}
"IF"           return mc_if;
"END_IF"       return mc_end_if;
"ELSE"         return mc_else;
"+"            return addition;
"*"            return multiplication;
"-"            return soustraction;
"/"            return division;

[ \t{commentaire}]
\n             nb_ligne++;
