%{
#include<stdio.h>
int commentline;
int flag=0;
%}
%%

"//".* {  
	commentline++;
	}
"/*".* { 
	flag=1; 
	commentline++;
	}
[a-z]+"*/" {
	if(flag==1){
		commentline++;
		flag=0;
		}
	}
.* {
	if(flag==1){
		commentline++;
	}
	else{
		fprintf(yyout,yytext);
		printf("%s",yytext);
		}
   }

 
\n  {
	fprintf(yyout,yytext);
	printf("%s",yytext);
    }
%%
int main(){
	yyin=fopen("cmt.c","r");
	yyout=fopen("res.c","w");
	yylex();
	printf("comment lines are %d ",commentline);

}

int yywrap(){

return 1;

}
