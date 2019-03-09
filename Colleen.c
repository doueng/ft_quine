#include <stdio.h>
// hello
void rofl() {}
int main()
{
	// hhaha
	rofl();
	char *str = "#include <stdio.h>%2$c// hello%2$cvoid rofl() {}%2$cint main()%2$c{%2$c%3$c// hhaha%2$c%3$crofl();%2$c%3$cchar *str = %4$c%s%4$c;%2$c%3$cprintf(str, str, 10, 9, 34);%2$c}%2$c";
	printf(str, str, 10, 9, 34);
}
