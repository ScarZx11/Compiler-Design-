%{
#include <stdio.h>
int a = 0;
int b = 1;
int n = 0;
%}

%%

[0-9]+ { n = atoi(yytext); }

%%

int yywrap() {
    return 1; // Indicate end of input
}

int main() {
    printf("Enter a number: ");
    yylex();
    printf("Fibonacci Series: ");
    int i, fib;
    for (i = 0; i < n; i++) {
        printf("%d ", a);
        fib = a + b;
        a = b;
        b = fib;
    }
    printf("\n");
    return 0;
}
