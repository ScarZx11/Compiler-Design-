%{
#include <stdio.h>
long long int factorial = 1;
%}

%%

[0-9]+ {
    int num = atoi(yytext);
    factorial = 1;
    for (int i = 1; i <= num; i++) {
        factorial *= i;
    }
}

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a non-negative integer: ");
    yylex();
    printf("Factorial: %lld\n", factorial);
    return 0;
}


// factorial of a non-negative integer