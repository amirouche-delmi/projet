
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
     diese = 258,
     bib_process = 259,
     bib_loop = 260,
     bib_array = 261,
     dollar = 262,
     mc_programme = 263,
     idf = 264,
     accolade_ouvrante = 265,
     accolade_fermante = 266,
     mc_var = 267,
     mc_integer = 268,
     mc_real = 269,
     mc_char = 270,
     mc_string = 271,
     mc_const = 272,
     quatre_points = 273,
     separateur_var = 274,
     crochet_ouvrant = 275,
     crochet_fermant = 276,
     egale = 277,
     taille_tab = 278,
     entier = 279,
     real = 280,
     caractere = 281,
     str = 282,
     guillemet = 283,
     apostrophe = 284,
     affectation = 285,
     mc_read = 286,
     parenthese_ouvrante = 287,
     parenthese_fermante = 288,
     signe_de_formatage_integer = 289,
     signe_de_formatage_real = 290,
     signe_de_formatage_string = 291,
     signe_de_formatage_char = 292,
     barre_verticale = 293,
     arobase = 294,
     mc_write = 295,
     mc_while = 296,
     mc_inf = 297,
     mc_sup = 298,
     mc_eg = 299,
     mc_infe = 300,
     mc_supe = 301,
     mc_diff = 302,
     mc_execut = 303,
     mc_if = 304,
     mc_end_if = 305,
     mc_else = 306,
     addition = 307,
     multiplication = 308,
     soustraction = 309,
     division = 310,
     fin_ligne = 311
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


