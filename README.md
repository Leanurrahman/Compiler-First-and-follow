bison -d anbns.y
flex anbns.l
gcc anbns.tab.c lex.yy.c -o parser
.\parser
