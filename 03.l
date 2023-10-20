
%%
[0-9]+ {
    printf("Found an integer: %s\n", yytext);
}

.|\n {
    /* Handle any other character or newline */
}

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}


// identifies and prints integers