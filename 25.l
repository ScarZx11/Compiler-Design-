%{
int lineCount = 0;
%}

%%
"apple" { printf("Line %d: %s\n", lineCount, yytext); }
\n { lineCount++; }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}



//Identify and Print Lines Containing a Specific Word