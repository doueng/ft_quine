#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
int main(void){
	char*new=NULL,*cmd=NULL;
	int fd,i=5;
	if (i <= 0)return(0);
	if (i == 5)new = "Sully.c";else asprintf(&new,"Sully_%d.c",i--);
	char *str="#include <stdio.h>%2$c#include <fcntl.h>%2$c#include <stdlib.h>%2$cint main(void){%2$c	char*new=NULL,*cmd=NULL;%2$c	int fd,i=%5$d;%2$c	if (i-- <= 0)return(0);%2$c	asprintf(&new,%3$cSully_%4$cd.c%3$c,i);%2$c	char *str=%3$c%1$s%3$c;%2$c	if(-1==(fd=open(new,O_CREAT|O_TRUNC|O_RDWR,0755)))return(1);%2$c	dprintf(fd,str,str,10,34,37,i);%2$c	asprintf(&cmd,%3$cgcc -Werror -Wextra -Wall %4$cs -o Sully_%4cd;./Sully_%4$d%3$c,new);%2$c	system(cmd);}%2$c";
	if(-1==(fd=open(new,O_CREAT|O_TRUNC|O_RDWR,0755)))return(1);
	dprintf(fd,str,str,10,34,37,i);
	asprintf(&cmd,"gcc -Werror -Wextra -Wall %s -o Sully_%d;./Sully_%d",new,i,i);
	system(cmd);}
