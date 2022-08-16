%{
#include"y.tab.h"

%}
%%

[0-9]+ {
	yylval.exp=strdup(yytext);
	return NUM;
	}
"+" return '+';
\n return 0;

%%
