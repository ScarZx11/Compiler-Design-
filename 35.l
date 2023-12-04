%{
#include<stdio.h>
%}

%%
([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4} { printf("IPv6 address: %s\n", yytext); }
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


//IPv6 Address Validation