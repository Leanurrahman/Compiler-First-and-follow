
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



Write a program to recognize strings of {a^nb^n | n≥10}

2. Implement a desk calculator using Flex and Yacc tools.

3. Implementation of FIRST and FOLLOW Sets for a Given CFG Using Flex and Yacc.

E=TE'

E' =+TE' E

T=FT'

T' = *FT' ε

F = (E) id

4. Implementation of Immediate Left Recursion Removal for a Context-Free Grammar Using Flex and Yacc.

5. Implementation of Left Factoring for a Context-Free Grammar.

6. Implement the predictive parser for the following grammar.

7. Implementation of intermediate code generation using Flex and Bison
