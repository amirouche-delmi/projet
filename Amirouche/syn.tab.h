
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
     mc_import = 258,
     bib_process = 259,
     bib_array = 260,
     bib_loop = 261,
     mc_programme = 262,
     idf = 263,
     accolade_ouvrante = 264,
     accolade_fermante = 265,
     mc_var = 266,
     mc_integer = 267,
     mc_real = 268,
     mc_char = 269,
     mc_string = 270,
     mc_const = 271,
     quatre_points = 272,
     separateur_var = 273,
     crochet_ouvrant = 274,
     crochet_fermant = 275,
     taille_tab = 276,
     entier = 277,
     real = 278,
     caractere = 279,
     str = 280,
     affectation = 281,
     mc_read = 282,
     parenthese_ouvrante = 283,
     parenthese_fermante = 284,
     guillemet = 285,
     dollar = 286,
     signe_de_formatage_real = 287,
     signe_de_formatage_string = 288,
     signe_de_formatage_char = 289,
     barre_verticale = 290,
     arobase = 291,
     mc_write = 292,
     mc_while = 293,
     mc_inf = 294,
     mc_sup = 295,
     mc_eg = 296,
     mc_infe = 297,
     mc_supe = 298,
     mc_diff = 299,
     mc_execut = 300,
     mc_if = 301,
     mc_end_if = 302,
     mc_else = 303,
     addition = 304,
     multiplication = 305,
     soustraction = 306,
     division = 307,
     fin_ligne = 308
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


