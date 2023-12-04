%{
#include<stdio.h>
%}

%%
\.[a-zA-Z0-9_-]+ { printf("CSS Class: %s\n", yytext); }
. ;

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the string:");
    yylex();
    return 0;
}

//CSS Class Identification