%{
#include <stdio.h>
%}

%%
\[([^\]]+)\]\(([^)]+)\) { printf("Markdown Link: Text='%s', URL='%s'\n", yytext + 1, yytext + 4); }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}


//Remove Whitespace   