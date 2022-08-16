%{
#include<stdlib.h>
#include<stdio.h>
extern FILE* yyin;
int yylex();
%}
%token NAME DT NUM 
%%
S : DT NAME '(' ')' '{' '}' ;

%%
int yyerror(const char *s){
printf("error occured is  %s ",s);
exit(0);
}
int main(){
yyin=fopen("fun.c","r");
yyparse();
printf("correct function defination");
}

