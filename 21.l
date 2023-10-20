%{
int wordCount = 0;
%}

%%
"apple" { wordCount++; }
.|\n

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    printf("Occurrences of 'apple': %d\n", wordCount);
    return 0;
}


//Occurrence of a Specific Word