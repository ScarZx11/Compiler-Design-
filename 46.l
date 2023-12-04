%{
#include<stdio.h>
%}

%%
rgb\(\s*\d+\s*,\s*\d+\s*,\s*\d+\s*\) { printf("RGB Color Code: %s\n", yytext); }
. ;

%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the text:");
    yylex();
    return 0;
}
