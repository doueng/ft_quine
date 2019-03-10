#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
int main(void){
	char *new,*cmd;
	int fd,i=5;
	if (i-- <= 4)return(0);
	asprintf(&new,"Sully_%d.c",i);
	char *str=strdup("");
	if(-1==(fd=open(new,O_CREAT|O_TRUNC|O_RDWR,0755)))return(1);
	dprintf(fd,str,str,10,9,34);
	asprintf(&cmd,"gcc -Werror -Wextra -Wall %1$s -o Sully;./Sully",new);
	system(cmd);}
