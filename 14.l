%{
#include <stdio.h>
#include <string.h>  /* Include the string.h header for strlen function */
%}

%%

[01]+ {
    int num = 0;
    int len = strlen(yytext);  /* Now strlen is correctly included */
    for (int i = 0; i < len; i++) {
        num = num * 2 + yytext[i] - '0';
    }
    printf("%d\n", num);
}
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a binary number: ");
    yylex();
    return 0;
}


//Binary to Decimal Converter