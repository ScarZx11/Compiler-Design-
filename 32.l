%{
#include<stdio.h>
%}

%%
#[0-9a-fA-F]{6} { printf("Hex color code: %s\n", yytext); }
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


//Hex Color Code Identification