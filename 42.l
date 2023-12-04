%{
#include<stdio.h>
%}

%%
([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2} { printf("MAC address: %s\n", yytext); }
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


//MAC Address Identification