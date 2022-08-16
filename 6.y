%{
#include<stdio.h>
#include<stdlib.h>

typedef char* string;
string ADDTOTABLE(string op1,string op2,char op);
struct {
 string op1,op2,res;
char op;
} code[100];
int idx=-1;
%}
%union {

char * exp;

}

%token <exp> NUM
%type <exp> EXP
%left '+' '-'
%left '/' '*'

%%
S : EXP ;
EXP: EXP '+' EXP { $$ = ADDTOTABLE($1,$3,'+');}
  | NUM { $$=$1;}
;


%%
string ADDTOTABLE(string op1,string op2,char op){

idx++;
code[idx].op1=op1;
code[idx].op2=op2;
code[idx].op=op;
string res =malloc(3);
sprintf(res,"@%c",idx+'A');

code[idx].res=res;
return res;
}
int yyerror(){
exit(0);
}

void TAC(){

for(int i=0;i<=idx;i++){
 printf("%s = %s %c %s \n",code[i].res,code[i].op1,code[i].op,code[i].op2);
}

}
int main(){
yyparse();
TAC();

}


