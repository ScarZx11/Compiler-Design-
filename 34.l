%{
#include<stdio.h>
%}

%%
[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4} { printf("Credit card number: %s\n", yytext); }
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



//Credit Card Number Detection