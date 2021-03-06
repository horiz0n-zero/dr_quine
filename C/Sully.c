#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int						main(void)
{
	static const char	*src = "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c%1$cint%2$c%2$c%2$c%2$c%2$c%2$cmain(void)%1$c{%1$c%2$cstatic const char%2$c*src = %3$c%4$s%3$c;%1$c%2$cint%2$c%2$c%2$c%2$c%2$ci = %5$d;%1$c%2$cint%2$c%2$c%2$c%2$c%2$cfd;%1$c%2$cchar%2$c%2$c%2$c%2$c*name;%1$c%2$cchar%2$c%2$c%2$c%2$c*cname;%1$c%2$cchar%2$c%2$c%2$c%2$c*exec;%1$c%1$c%2$casprintf(&name, %3$cSully_%%d%3$c, i);%1$c%2$casprintf(&cname, %3$cSully_%%d.c%3$c, i);%1$c%2$casprintf(&exec, %3$cclang -Wall -Wextra -Werror %%s -o %%s%3$c, cname, name);%1$c%2$cif (!access(cname, F_OK))%1$c%2$c%2$ci = i - 1;%1$c%2$cfd = open(cname, O_WRONLY | O_TRUNC | O_CREAT, 0666);%1$c%2$cdprintf(fd, src, 10, 9, 34, src, i, %3$c%%s%3$c, %3$c%%d%3$c);%1$c%2$cif (i < 0)%1$c%2$c%2$creturn (0);%1$c%2$csystem(exec);%1$c%2$cexecve(name, NULL, NULL);%1$c%2$cfree(name);%1$c%2$cfree(cname);%1$c%2$cfree(exec);%1$c%2$cclose(fd);%1$c%2$creturn (0);%1$c}%1$c";
	int					i = 5;
	int					fd;
	char				*name;
	char				*cname;
	char				*exec;

	asprintf(&name, "Sully_%d", i);
	asprintf(&cname, "Sully_%d.c", i);
	asprintf(&exec, "clang -Wall -Wextra -Werror %s -o %s", cname, name);
	if (!access(cname, F_OK))
		i = i - 1;
	fd = open(cname, O_WRONLY | O_TRUNC | O_CREAT, 0666);
	dprintf(fd, src, 10, 9, 34, src, i, "%s", "%d");
	if (i < 0)
		return (0);
	system(exec);
	execve(name, NULL, NULL);
	free(name);
	free(cname);
	free(exec);
	close(fd);
	return (0);
}
