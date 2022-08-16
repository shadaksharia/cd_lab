%{
int pi,ni,pf,nf;
%}
%%

"+"?[0-9]+ pi++;
"-"[0-9]+ ni++;
"+"?[0-9]+"/""+"?[0-9]+ pf++;
"-"[0-9]+"/""-"[0-9]+ pf++;
"+"?[0-9]+"/""-"[0-9]+ nf++;
"-"[0-9]+"/""+"?[0-9]+ nf++;
\n return 0;

%%
int main(){
yylex();

printf("positive integer is ==> %d \n",pi);
printf("negetive integer is ==> %d \n",ni);
printf("positive fraction is ==> %d \n",pf);
printf("negative fraction is ==> %d \n",nf);
}
int yywrap(){

return 1;

}
