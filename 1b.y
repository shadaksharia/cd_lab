%{
#include<stdio.h>
#include<stdlib.h>

%}
%%
S : A B;
A : 'a' A 'b' 
   | ;
B : 'b' B 'c'
   | ;

%%
int main(){
yyparse();
printf("string accepted");

}
int yyerror(){
printf("error occured");
exit(0);
}

