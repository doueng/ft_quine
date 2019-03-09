int i = 5;
#define _GNU_SOURCE
#include <stdio.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	char		*new_filename;
	char		*joined;
	int			curr_fd;
	struct stat	st;
	int			new_fd;
	char		*new_file;
	char		*curr_file;

	curr_file = strdup(__FILE__);
	if (i <= 0)
		return (0);
	if (i == 5)
	{
		curr_file[5] = 0;
		asprintf(&joined, "%s_%d.c", curr_file, --i);
	}
	else
	{
		curr_file[6] = i;
		joined = curr_file;
	}
	curr_fd = open(__FILE__, O_RDONLY);
	new_file = malloc(st.st_size);
	new_fd = open(joined, O_CREAT|O_TRUNC, 0755);
	new_file[8] = i;
	read(new_fd, new_file, st.st_size);
	char *compile_cmd;

	asprintf(&compile_cmd, "gcc -Werror -Wextra -Wall %s", curr_file);
	system(compile_cmd);
	system("./a.out");
	return (0);
}
