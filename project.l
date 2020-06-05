%option yylineno

%{
	#include<stdio.h>
	#include"y.tab.h"
	#include<math.h>
%}
%%
"#include"([ ]+)?((<(\\.|[^>])+>)|(\"(\\.|[^"])+\"))					                                    {return HEADER;}
"#define"[ ]+[a-zA-z_][a-zA-z_0-9]* 																	    {return DEFINE;}
"auto"|"register"|"static"|"extern"|"typedef"																{return storage_const;}
"void"|"char"|"short"|"int"|"long"|"float"|"double"|"signed"|"unsigned"										{return type_const;}	
"const"|"volatile"																							{return qual_const;}
"enum"																										{return enum_const;}
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
"struct"|"union"																							{return struct_const;}
"return"																									{return TOKEN_RETURN;}
"sizeof"																									{return TOKEN_SIZEOF;}
"||" 																										{return DECISION_OR;}
"&&"																										{return DECISION_AND;}
"..."																										{return param_const;}
"=="|"!="																									{return DECISION_EQUALITY;}
"<="|">="																									{return DECISION_EQLTY;}
">>"|"<<"																									{return DECISION_SHIFT;}
"++"|"--"																									{return inc_const;}
"->"																										{return point_const;}
";"|"="|","|"{"|"}"|"("|")"|"["|"]"|"*"|"+"|"-"|"/"|"?"|":"|"&"|"|"|"^"|"!"|"~"|"%"|"<"|">"					{return yytext[0];}
"*="|"/="|"+="|"%="|">>="|"-="|"<<="|"&="|"^="|"|="															{return PUNC;}
[0-9]+																									{return int_const;}
[0-9]+"."[0-9]+																						{return float_const;}	
"'"."'"																										{return char_const;}
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
