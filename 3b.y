%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int number=0;
extern FILE* yyin;
%}

%token FOR INT NUM NAME;
%%
S : I

I : FOR '(' INIT ';' CND ';' ASSGN ')' LOOP { number++;}
;
LOOP : '{' I '}'
	| '{' '}' 
 ;
INIT : INT NAME '=' NUM
|
;
CND : NAME '<' NUM
|
;
ASSGN :
;
%%
int main(){
yyin=fopen("for.c","r");
yyparse();
printf("number of nested for loops is %d ",number);

}

int yyerror(){
printf("error occured");
exit(0);
}
