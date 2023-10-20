%{
#include <stdio.h>
%}

%%
[IVXLCDM]+ { printf("Roman Numeral: %s\n", yytext); }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}


//Identify and Print Roman Number