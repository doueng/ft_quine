int i = 5;

#define _GNU_SOURCE
#include <stdio.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char		*new_filename;
	char		*curr_filename;
	char		*compile_cmd;
	int			curr_fd;
	struct stat	st;
	int			new_fd;
	char		*new_file;

	if (i-- <= 0)
		return (0);
	curr_filename = strdup(__FILE__);
	curr_filename[5] = 0;
	asprintf(&new_filename, "%s_%d.c", curr_filename, i);

	curr_fd = open(__FILE__, O_RDONLY);
	fstat(curr_fd, &st);

	new_file = malloc(st.st_size);
	read(curr_fd, new_file, st.st_size);

	new_fd = open(new_filename, O_CREAT|O_TRUNC|O_RDWR, 0755);
	new_file[8] = i + '0';
	write(new_fd, new_file, st.st_size);

	asprintf(&compile_cmd, "gcc -Werror -Wextra -Wall %s", new_filename);
	system(compile_cmd);
	system("./a.out");
	return (0);
}
