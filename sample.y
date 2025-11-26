%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    void yyerror(char *s);
    int yylex();
%}

%union {
    char *str;
}

%token <str> STRING
%token PLUS
%type <str> expression 

%%

program:
expression{
    printf("output: %s\n", $1);
}
;

expression:
STRING  PLUS STRING {
    char *result = malloc(strlen($1) + strlen($3)+2);
    sprintf(result, "%s %s", $1, $3);
    $$ = result;
}
;

%%
void yyerror(char *s){
    fprintf(stderr, "Error: %s\n",s);
}

int main(){
    printf("Enter string expression (e.g. , Daffodil+University):\n");
    yyparse();
    return 0;
}