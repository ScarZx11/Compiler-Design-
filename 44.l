%{
#include<stdio.h>
%}

%%
[1-9][0-9]* { printf("Positive Integer: %s\n", yytext); }
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





//CSV Value Extraction