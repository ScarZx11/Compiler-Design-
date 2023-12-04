%{
#include<stdio.h>
%}

%%
[01]+ { printf("Binary Code: %s\n", yytext); }
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


//Binary Code Identification