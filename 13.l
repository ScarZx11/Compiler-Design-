%{
#include <stdio.h>
%}

%option noyywrap

%%

[0-9]+ {
    int num = atoi(yytext);
    if (num >= 1 && num <= 12) {
        // Add rules to handle numbers from 1 to 12
    } else if (num == 13) {
        printf("Thirteen\n");
    } else if (num == 14) {
        printf("Fourteen\n");
    } else if (num == 15) {
        printf("Fifteen\n");
    } else if (num == 16) {
        printf("Sixteen\n");
    } else if (num == 17) {
        printf("Seventeen\n");
    } else if (num == 18) {
        printf("Eighteen\n");
    } else if (num == 19) {
        printf("Nineteen\n");
    } else if (num == 20) {
        printf("Twenty\n");
    } else {
        printf("Number out of range\n");
    }
}

. ;

%%

int main() {
    printf("Enter a number (1 to 20): ");
    yylex();
    return 0;
}


// Number to words Convertor