%{
#include <stdio.h>
%}

%%
\.[a-zA-Z0-9]+ { printf("File Extension: %s\n", yytext); }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}


//Identify and Classify File Extensions