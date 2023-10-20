%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[a-z]+ { for (int i = 0; yytext[i] != '\0'; i++) {
            printf("%c", toupper(yytext[i]));
          }
          printf("\n");
        }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}


//Convert Text to Uppercase