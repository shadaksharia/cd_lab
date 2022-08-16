%{
#include<stdio.h>
int word=0,line=0,charecter=0,space=0;

%}
%%
" " space++;
\t space=space+4;
\n line++;
[a-zA-Z]+ {
	word++;
	charecter=charecter + yyleng;
}
%%
int main(){

yyin=fopen("word.txt","r");
yylex();

printf("space is ==> %d \n",space);
printf("lines is ==> %d \n",line);
printf("words is ==> %d \n",word);
printf("charecter is ==> %d \n",charecter);
}
int yywrap(){

return 1;

}
