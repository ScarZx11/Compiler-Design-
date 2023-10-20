%{
#include <stdio.h>
#include <string.h>  /* Include the string.h header for strlen function */
int isPalindrome = 1;
%}

%%

[a-zA-Z]+ {
    char* str = yytext;
    int len = strlen(str);
    isPalindrome = 1;
    for (int i = 0; i < len / 2; i++) {
        if (str[i] != str[len - 1 - i]) {
            isPalindrome = 0;
            break;
        }
    }
}

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string: ");
    yylex();
    if (isPalindrome) {
        printf("Palindrome\n");
    } else {
        printf("Not a Palindrome\n");
    }
    return 0;
}


// string in a palindrome

