#include <fcntl.h>
#include <stdio.h>
/*
  comment
*/
#define MAIN(str) int main () {int fd=open("Grace_kid.c",O_WRONLY|O_CREAT|O_TRUNC,0755);dprintf(fd, str, str, 10, 34);}

MAIN("#include <fcntl.h>%2$c#include <stdio.h>%2$c/*%2$c  comment%2$c*/%2$c#define MAIN(str) int main () {int fd=open(%3$cGrace_kid.c%3$c,O_WRONLY|O_CREAT|O_TRUNC,0755);dprintf(fd, str, str, 10, 34);}%2$c%2$cMAIN(%3$c%1$s%3$c);%2$c");
