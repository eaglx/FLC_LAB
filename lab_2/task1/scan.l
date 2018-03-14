%{
  #include <stdio.h>
  int yywrap(void);
  int yylex(void);
  int column;
%}
%s NAGLOWEK
%s DANE
%%
 /* == rules == */
^[0-9] { sscanf(yytext,"%d",&column) }
<0>^[a-zA-Z] { BEGING NAGLOWEK; }
<NAGLOWEK>.$ { BEGIN DANE}
<DANE>.

%%
int yywrap(void) { return 1; }
int main() { return yylex(); }
