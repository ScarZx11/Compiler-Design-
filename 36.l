%{
#include<stdio.h>
%}

%%
@\w+ { printf("Twitter handle: %s\n", yytext); }
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

//Twitter Handle Identification