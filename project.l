%option yylineno

%{
	#include<stdio.h>
	#include"y.tab.h"
	#include<math.h>
%}
%%
"#include"([ ]+)?((<(\\.|[^>])+>)|(\"(\\.|[^"])+\"))					                                    {return HEADER;}
"#define"[ ]+[a-zA-z_][a-zA-z_0-9]* 																	    {return DEFINE;}
"auto"|"register"|"static"|"extern"|"typedef"																{return CONST_STORAGE;}
"void"|"char"|"short"|"int"|"long"|"float"|"double"|"signed"|"unsigned"										{return CONST_TYPE;}	
"const"|"volatile"																							{return CONST_QUAL;}
"enum"																										{return CONST_ENUM;}
"case"																										{return CASE;}	
"default"																									{return DEFAULT;}
"if"																										{return TOKEN_IF;}
"switch"																									{return TOKEN_SWITCH;}
"else"																										{return TOKEN_ELSE;}
"for"																										{return TOKEN_FOR;}
"do"																										{return TOKEN_DO;}
"while"																										{return TOKEN_WHILE;}
"goto"																										{return TOKEN_GOTO;}
"continue"																									{return TOKEN_CONTINUE;}
"break"																										{return TOKEN_BREAK;}
"struct"|"union"																							{return CONST_STRUCT;}
"return"																									{return TOKEN_RETURN;}
"sizeof"																									{return TOKEN_SIZEOF;}
"||" 																										{return DECISION_OR;}
"&&"																										{return DECISION_AND;}
"..."																										{return param_const;}
"=="|"!="																									{return DECISION_EQUALITY;}
"<="|">="																									{return DECISION_EQLTY;}
">>"|"<<"																									{return DECISION_SHIFT;}
"++"|"--"																									{return inc_const;}
"->"																										{return CONST_POINT;}
";"|"="|","|"{"|"}"|"("|")"|"["|"]"|"*"|"+"|"-"|"/"|"?"|":"|"&"|"|"|"^"|"!"|"~"|"%"|"<"|">"					{return yytext[0];}
"*="|"/="|"+="|"%="|">>="|"-="|"<<="|"&="|"^="|"|="															{return PUNC;}
[0-9]+																										{return CONST_INT;}
[0-9]+"."[0-9]+																								{return CONST_FLOAT;}	
"'"."'"																										{return CONST_CHAR;}
[a-zA-z_][a-zA-z_0-9]*			 																			{return id;}
\"(\\.|[^\"])*\"																							{return string;}
"//"(\\.|[^\n])*[\n]																						;
[/][*]([^*]|[*]*[^*/])*[*]+[/]                                                                              ;
[ \t\n]																										;
%%

int yywrap(void)
{
    return 1;
}
