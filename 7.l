%{
#include"y.tab.h"
%}
%%
[ ] ;
"int" return DT;
"{" return '{';
"}" return '}';
"(" return '(';
")" return ')';
[0-9]+ return NUM;
[a-zA-Z]+  return NAME;
"\n" ;


%%
