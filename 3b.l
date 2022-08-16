%{
#include"y.tab.h"
%}
%%
"int" return INT;
"for" return FOR;
[0-9]+ return NUM;
"(" return '(';
")" return ')';
";" return ';';
"{" return '{';
"}" return '}';
"=" return '=';
"<" return '<';
" " ;
[a-z]+ return NAME;
\n ;
%%
