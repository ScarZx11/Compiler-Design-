%{
#include <stdio.h>
int wordCount = 0;
%}

%%

[a-zA-Z]+ { wordCount++; }
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string: ");
    yylex();
    printf("Word Count: %d\n", wordCount);
    return 0;
}


//Word Count