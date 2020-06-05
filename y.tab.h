/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

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

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    CONST_INT = 258,
    CONST_CHAR = 259,
    CONST_FLOAT = 260,
    id = 261,
    string = 262,
    enumeration_const = 263,
    CONST_STORAGE = 264,
    CONST_TYPE = 265,
    CONST_QUAL = 266,
    CONST_STRUCT = 267,
    CONST_ENUM = 268,
    DEFINE = 269,
    TOKEN_IF = 270,
    TOKEN_FOR = 271,
    TOKEN_DO = 272,
    TOKEN_WHILE = 273,
    TOKEN_BREAK = 274,
    TOKEN_SWITCH = 275,
    TOKEN_CONTINUE = 276,
    TOKEN_RETURN = 277,
    CASE = 278,
    DEFAULT = 279,
    TOKEN_GOTO = 280,
    TOKEN_SIZEOF = 281,
    PUNC = 282,
    DECISION_OR = 283,
    DECISION_AND = 284,
    DECISION_EQUALITY = 285,
    DECISION_SHIFT = 286,
    DECISION_EQLTY = 287,
    CONST_INC = 288,
    CONST_POINT = 289,
    CONST_PARAM = 290,
    TOKEN_ELSE = 291,
    HEADER = 292
  };
#endif
/* Tokens.  */
#define CONST_INT 258
#define CONST_CHAR 259
#define CONST_FLOAT 260
#define id 261
#define string 262
#define enumeration_const 263
#define CONST_STORAGE 264
#define CONST_TYPE 265
#define CONST_QUAL 266
#define CONST_STRUCT 267
#define CONST_ENUM 268
#define DEFINE 269
#define TOKEN_IF 270
#define TOKEN_FOR 271
#define TOKEN_DO 272
#define TOKEN_WHILE 273
#define TOKEN_BREAK 274
#define TOKEN_SWITCH 275
#define TOKEN_CONTINUE 276
#define TOKEN_RETURN 277
#define CASE 278
#define DEFAULT 279
#define TOKEN_GOTO 280
#define TOKEN_SIZEOF 281
#define PUNC 282
#define DECISION_OR 283
#define DECISION_AND 284
#define DECISION_EQUALITY 285
#define DECISION_SHIFT 286
#define DECISION_EQLTY 287
#define CONST_INC 288
#define CONST_POINT 289
#define CONST_PARAM 290
#define TOKEN_ELSE 291
#define HEADER 292

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
