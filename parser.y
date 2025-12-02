%{
    #include <stdio.h>
    #include <stdlib.h>
    extern int yylex();
    extern int yyparse();
    void yyerror(const char *s);
%}

%token A B NL

%start S

%%

S: A S | AB ;
AB: A B ;

%%

void yyerror(const char *s) {
    printf("invalid string\n");
    exit(0);
}

int main() {
    printf("enter the string\n");
    yyparse();
    return 0;
}