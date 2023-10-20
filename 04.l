%{
#include <stdio.h>
#include <string.h>

int is_palindrome(char *str) {
    int len = strlen(str);
    for (int i = 0; i < len / 2; i++) {
        if (str[i] != str[len - i - 1]) return 0;
    }
    return 1;
}
%}

%%
[a-zA-Z]+  { if (is_palindrome(yytext)) printf("%s is a palindrome.\n", yytext); }
. ;

%%
int yywrap() {
    return 1;
}

int main() {
    printf("Enter a word: ");
    yylex();
    return 0;
}


//Identifying palindromes 