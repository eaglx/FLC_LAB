%{
  #include <stdio.h>
  int yywrap(void);
  int yylex(void);
%}
%%
 /* == rules == */
^[0]*[1]* { ECHO; printf(" OK"); }
\n { printf(" OK\n"); }
.* { ECHO; printf(" Error"); }

%%
int yywrap(void) { return 1; }
int main() { return yylex(); }
