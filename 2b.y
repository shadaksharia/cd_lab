%{

%}
%token NUM
%left '+' '-'
%left '/' '*'
%%

S : I {printf("ans is %d",$$);}
   
I : I '+' I {$$=$1 + $3;}
	| I '-' I {$$=$1 - $3;}
	| I '*' I {$$=$1 * $3;}
	| I '/' I {$$=$1 / $3;}
	| NUM { $$=$1;}

%%
int main(){
yyparse();

}
int yyerror(){
printf("error occured");
exit(0);
}

