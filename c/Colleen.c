#include <stdio.h>
/*
  comment
*/
void rofl(){}
int main(){
	/*
	  comment
	*/
	rofl();
	char *str="#include <stdio.h>%2$c/*%2$c  comment%2$c*/%2$cvoid rofl(){}%2$cint main(){%2$c	/*%2$c	  comment%2$c	*/%2$c	rofl();%2$c	char *str=%3$c%1$s%3$c;%2$c	printf(str,str,10,34);%2$c}%2$c";
	printf(str,str,10,34);
}
