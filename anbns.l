%{
#include "anbns.tab.h"
%}

%%

"id"        { return ID; }
"("         { return '('; }
")"         { return ')'; }
"+"         { return '+'; }
"*"         { return '*'; }
[ \t\n]+    ;
.           ;

%%

int yywrap() { return 1; }
