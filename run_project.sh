yacc -d project.y
lex project.l
gcc -o a.out y.tab.c lex.yy.c -lfl -lm
./a.out < inp
rm a.out
rm lex.yy.c
rm y.output
rm y.tab.c
rm y.tab.h