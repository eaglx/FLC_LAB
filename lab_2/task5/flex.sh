#! /bin/sh
flex -l scan.l &&\
gcc lex.yy.c &&\
rm -f lex.yy.c
