%{
#include <stdio.h>
#include <string.h>

int yylex();
void yyerror(char *s);
void print_sets();
%}

%token ID

%%

start : E { print_sets(); }
     ;

E  : T Ep ;
Ep : '+' T Ep
   | /* ε */
   ;
T  : F Tp ;
Tp : '*' F Tp
   | /* ε */
   ;
F  : '(' E ')'
   | ID
   ;

%%

void print_sets() {

    printf("\n===== FIRST Sets =====\n");
    printf("FIRST(E)  = { id , ( }\n");
    printf("FIRST(E') = { + , ε }\n");
    printf("FIRST(T)  = { id , ( }\n");
    printf("FIRST(T') = { * , ε }\n");
    printf("FIRST(F)  = { id , ( }\n");

    printf("\n===== FOLLOW Sets =====\n");
    printf("FOLLOW(E)  = { $ , ) }\n");
    printf("FOLLOW(E') = { $ , ) }\n");
    printf("FOLLOW(T)  = { + , $ , ) }\n");
    printf("FOLLOW(T') = { + , $ , ) }\n");
    printf("FOLLOW(F)  = { * , + , $ , ) }\n");
}

void yyerror(char *s) {
    printf("Syntax error: %s\n", s);
}

int main() {
    printf("Enter an expression: ");
    yyparse();
    return 0;
}
