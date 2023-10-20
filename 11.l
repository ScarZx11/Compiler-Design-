%{
#include <stdio.h>
int isBalanced = 1;
int balance = 0;
%}

%%

"(" { balance++; }
")" {
    if (balance <= 0) {
        isBalanced = 0;
        break;
    }
    balance--;
}
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a string with parentheses: ");
    yylex();
    if (isBalanced && balance == 0) {
        printf("Balanced Parentheses\n");
    } else {
        printf("Unbalanced Parentheses\n");
    }
    return 0;
}


//string with parentheses has balanced parentheses