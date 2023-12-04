%{
#include<stdio.h>
int vowelCount = 0;
%}

%%
[aeiouAEIOU] { vowelCount++; }
. ;

%%    

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the string:");
    yylex();

    printf("\nNumber of vowels: %d\n", vowelCount);
    return 0;
}



// vowels couunting 