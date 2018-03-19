%{
  #include <stdio.h>
  int yywrap(void);
  int yylex(void);
  int colToPrint;
  int currentCol;
%}
%%
 /* == rules == */
^" "*[0-9] { sscanf(yytext, "%d", &colToPrint); }
" " ;
Kol[0-9][0-9] { currentCol++; if(currentCol == colToPrint){ ECHO; printf("\n"); } }
[a-z0-9]+" " { currentCol++; if(currentCol == colToPrint){ ECHO; printf("\n"); } }
" "" "+ { currentCol++; if(currentCol == colToPrint){ printf("\n"); } }
\n { currentCol = 0; }

%%
int yywrap(void) { return 1; }
int main() { return yylex(); }
