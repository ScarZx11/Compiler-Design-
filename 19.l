%{
#include <stdio.h>
%}

%%

([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]) {
    printf("Valid IPv4 Address: %s\n", yytext);
}
. ;

%% 

int yywrap() {
    return 1;
}

int main() {
    printf("Enter an IPv4 address: ");
    yylex();
    return 0;
}


//IPv4 Address Validator