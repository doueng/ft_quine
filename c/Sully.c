int i = 5;

#define _GNU_SOURCE
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char		*new_filename;
	char		*curr_filename;
	char		*compile_cmd;
	int			new_fd;
	char		*new_file;
	char		*new_exe;

	if (i-- <= 4) return (0);
	if (NULL == (curr_filename = strndup(__FILE__, 5))) return (1);
	asprintf(&new_filename, "%s_%d.c", curr_filename, i);

	asprintf(&new_file, "rofl %d alsdjflasjdflkj", i);
	new_file[8] = i + '0';

	if (-1 == (new_fd = open(new_filename, O_CREAT|O_TRUNC|O_RDWR, 0755))) return (1);
	dprintf(new_fd, "%s", new_file);

	new_exe = strdup(new_filename);
	new_exe[5] = 0;
	asprintf(&compile_cmd, "gcc -Werror -Wextra -Wall %1$s -o %2$s; ./%2$s", new_filename, new_exe);
	system(compile_cmd);
}
