%{
#include<stdio.h>
%}

%%
\"[^\"]+\" { printf("Quoted string: %s\n", yytext); }
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



//Quoted String Extraction