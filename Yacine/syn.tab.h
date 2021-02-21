
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDF = 258,
     debut_chaine = 259,
     fin_chaine = 260,
     guill = 261,
     commentaire = 262,
     mc_import = 263,
     bib_process = 264,
     bib_loop = 265,
     bib_array = 266,
     mc_programme = 267,
     dollar = 268,
     mc_var = 269,
     mc_integer = 270,
     mc_real = 271,
     mc_read = 272,
     mc_char = 273,
     mc_string = 274,
     mc_const = 275,
     entier = 276,
     real = 277,
     caractere = 278,
     string = 279,
     taille_tab = 280,
     mc_write = 281,
     mc_while = 282,
     mc_inf = 283,
     mc_sup = 284,
     mc_eg = 285,
     mc_infe = 286,
     mc_supe = 287,
     mc_diff = 288,
     mc_execut = 289,
     mc_if = 290,
     mc_end_if = 291,
     mc_else = 292,
     quatre_points = 293,
     separateur_var = 294,
     parenthese_ouvrante = 295,
     parenthese_fermante = 296,
     signe_de_formatage_real = 297,
     signe_de_formatage_string = 298,
     signe_de_formatage_char = 299,
     guillemet = 300,
     affectation = 301,
     barre_verticale = 302,
     arobase = 303,
     addition = 304,
     multiplication = 305,
     soustraction = 306,
     division = 307,
     fin_ligne = 308,
     crochet_ouvrant = 309,
     crochet_fermant = 310,
     accolade_ouvrante = 311,
     accolade_fermante = 312
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


