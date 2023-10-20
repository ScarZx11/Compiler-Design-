%{
#include <stdio.h>
%}

%%
0[xX][0-9A-Fa-f]+ { printf("Hexadecimal Number: %s\n", yytext); }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}




//Detect Hexadecimal Numbers
