# The Yaccelent

YACC Parser for C Language.

To run the project, do:
```
yacc -d project.y
lex project.l
gcc -o a.out y.tab.c lex.yy.c -lfl -lm
./a.out < {name of any file you want to parse}
```

Or just run:
```
./run-project {name of any file you want to parse}
```