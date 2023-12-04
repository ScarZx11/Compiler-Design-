%{
#include<stdio.h>
%}

%%
!\[.*\]\(.*\) { printf("Markdown Image Link: %s\n", yytext); }
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

//Markdown Image Identification