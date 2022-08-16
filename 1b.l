%{
#include"y.tab.h"
%}
%%
"a" return 'a';
"c" return 'c';
"b" return 'b';
\n return 0;
%%

