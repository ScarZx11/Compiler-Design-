%{
#include <stdio.h>
#include <string.h>
%}

%%

[a-zA-Z]+ {
    char* str = yytext;
    int len = strlen(str);
    if (len > 0) {
        if (strchr("aeiouAEIOU", str[0])) {
            printf("%s", str);
        } else {
            printf("%s%cay", str + 1, str[0]);
        }
    }
}
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter a word: ");
    yylex();
    printf("\n");
    return 0;
}

//Word to Pig Latin