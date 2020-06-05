# Structure
A YACC and Lex program is structurally similar to a LEX one.
declarations
%%
rules
%%
routines

## Yacc
- Token names declared with %token
- Declaration of the start symbol using the keyword %start
- C code between %{ and %}.

### RULES SECTION.

A rule has the form:

nonterminal : sentential form
            | sentential form
            .................
            | sentential form
            ;


#### Lex Yacc Interaction **LEAVE FOR PARAKH**
yyparse() calls yylex() when it needs a new token.

The external variable yylval is used in a LEX source program to return values of lexemes, yylval is assumed to be integer if you take no other action.

### yywrap() at end
Function yywrap is called by lex when input is exhausted. Return 1 if you are done or 0 if more processing is required. Every C program requires a main function. In this case we simply call yylex that is the main entry-point for lex.

### The Line Number at top
%option yylineno

Is used in the Yacc file if any kind of error is encountered.
