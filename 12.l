%{
#include <stdio.h>
#include <string.h>
%}

%%

[a-zA-Z]+ {
    char* str = yytext;
    int len = strlen(str);
    for (int i = len - 1; i >= 0; i--) {
        putchar(str[i]);
    }
}
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string: ");
    yylex();
    printf("\n");
    return 0;
}


//reverses the characters