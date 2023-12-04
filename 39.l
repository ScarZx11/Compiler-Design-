%{
#include<stdio.h>
%}

%%
([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9] { printf("Time: %s\n", yytext); }
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


//Time Format Recognition