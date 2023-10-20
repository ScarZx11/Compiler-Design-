%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%

(https?|ftp):\/\/[^\s/$.?#].[^\s]* {
    printf("URL: %s\n", yytext);
}
. ;

%%

int main() {
    printf("Enter a text containing URLs: ");
    yylex();
    return 0;
}



//URL Extractor