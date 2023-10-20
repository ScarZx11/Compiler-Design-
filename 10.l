%{
#include <stdio.h>
int vowelCount = 0;
%}

%%

[aeiouAEIOU] { vowelCount++; }

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Vowel Count: %d\n", vowelCount);
    return 0;
}


//counts the number of vowels