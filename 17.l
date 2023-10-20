%{
#include <stdio.h>
%}

%%

0x[0-9A-Fa-f]+ {
    int num = 0;
    sscanf(yytext, "%x", &num);
    printf("%d\n", num);
}
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a hexadecimal number (e.g., 0xA1F): ");
    yylex();
    return 0;
}


//Hexadecimal to Decimal 