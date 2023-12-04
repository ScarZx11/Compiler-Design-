%{
#include<stdio.h>
%}

%%
[A-Z0-9]{2,}-[0-9]{2,}-[A-Z0-9]{1,} { printf("License Plate: %s\n", yytext); }
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

//License Plate Identification