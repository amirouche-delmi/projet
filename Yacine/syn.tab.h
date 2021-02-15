
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
     lettre = 258,
     chiffre = 259,
     IDF = 260,
     commentaire = 261,
     mc_import = 262,
     bib_process = 263,
     bib_loop = 264,
     bib_array = 265,
     mc_programme = 266,
     dollar = 267,
     mc_var = 268,
     mc_integer = 269,
     mc_real = 270,
     mc_char = 271,
     mc_string = 272,
     mc_const = 273,
     entier = 274,
     real = 275,
     caractere = 276,
     string = 277,
     taille_tab = 278,
     identificateur = 279,
     mc_write = 280,
     mc_while = 281,
     mc_inf = 282,
     mc_sup = 283,
     mc_eg = 284,
     mc_infe = 285,
     mc_supe = 286,
     mc_diff = 287,
     mc_execut = 288,
     mc_if = 289,
     mc_end_if = 290,
     mc_else = 291,
     quatre_points = 292,
     separateur_var = 293,
     parenthese_ouvrante = 294,
     parenthese_fermante = 295,
     signe_de_formatage_real = 296,
     signe_de_formatage_string = 297,
     signe_de_formatage_char = 298,
     guillemet = 299,
     barre_verticale = 300,
     arobase = 301,
     addition = 302,
     multiplication = 303,
     soustraction = 304,
     division = 305,
     crochet_ouvrant = 306,
     crochet_fermant = 307,
     accolade_ouvrante = 308,
     accolade_fermante = 309
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

