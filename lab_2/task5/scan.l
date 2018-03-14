%{
  #include <stdio.h>
  int yywrap(void);
  int yylex(void);
%}
%%
 /* == rules == */
^" "*[0-9]*[05]" "*$ { ECHO; printf("(+)"); }
^" "*[0-9]+" "*$ { ECHO; printf("\t(-)"); }

%%
int yywrap(void) { return 1; }
int main() { return yylex(); }
