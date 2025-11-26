%{
    #include "sample.tab.h"
    #include <string.h>
%}

%%
[a-zA-Z]+ {
    yylval.str = strdup(yytext);
    return STRING;
}
"+" {
    return PLUS;
}
[ \t\r\n]    { /* Ignore all whitespace */ }
. {
    return yytext[0];
}
%%

int yywrap(){
    return 1;
}