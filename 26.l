%{
#include <stdio.h>
%}

%%
[+-]?[0-9]*\.[0-9]+[eE][+-]?[0-9]+ { printf("Scientific Notation: %s\n", yytext); }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}

//Extract Scientific Notion