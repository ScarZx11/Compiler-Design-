%%
[a-zA-Z]+-[a-zA-Z]+ { printf("Hyphenated Word: %s\n", yytext); }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}



//Identify and Classify Words with Hyphens