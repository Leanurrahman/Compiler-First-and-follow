
3.Implementation of FIRST and FOLLOW Sets for a Given CFG Using Flex and Yacc.
E = T E'
E' = + T E' | ε
T = F T'
T' = * F T' | ε
F = ( E ) | id






bison -d anbns.y
flex anbns.l
gcc anbns.tab.c lex.yy.c -o parser
.\parser
