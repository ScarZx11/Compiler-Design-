%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%

[IVXLCDM]+ {
    char* roman = yytext;
    int decimal = 0;
    int i;

    for (i = 0; i < strlen(roman); i++) {
        switch (roman[i]) {
            case 'I':
                decimal += 1;
                break;
            case 'V':
                decimal += 5;
                break;
            case 'X':
                decimal += 10;
                break;
            case 'L':
                decimal += 50;
                break;
            case 'C':
                decimal += 100;
                break;
            case 'D':
                decimal += 500;
                break;
            case 'M':
                decimal += 1000;
                break;
            default:
                printf("Invalid Roman numeral\n");
                return 1;
        }
    }
    printf("%d\n", decimal);
}

. ;

%%

int main() {
    printf("Enter a Roman numeral: ");
    yylex();
    return 0;
}


//Roman Numberal to Decimal 