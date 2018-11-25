#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int						main(void)
{
	static const char	*src = "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <stdlib.h>%1$c#include <unistd.h>%1$c%1$cint%2$c%2$c%2$c%2$c%2$c%2$cmain(void)%1$c{%1$c%2$cstatic const char	*src = %3$c%4$s%3$c;%1$c%2$cstatic const int%2$ci = %5$d;%1$c%2$cint%2$c%2$c%2$c%2$c%2$cfd;%1$c%2$cchar%2$c%2$c%2$c%2$c*name;%1$c%2$cchar%2$c%2$c%2$c%2$c*cname;%1$c%2$cchar%2$c%2$c%2$c%2$c*exec;%1$c%1$c%2$casprintf(&name, %3$cSully_%7$s%3$c, i);%1$c%2$casprintf(&cname, %3$cSully_%7$s.c%3$c, i);%1$c%2$casprintf(&exec, %3$cclang -Wall -Wextra -Werror %6$s -o %6$s%3$c, cname, name);%1$c%2$cfd = open(cname, O_WRONLY | O_TRUNC | O_CREAT, 0666);%1$c%2$cdprintf(fd, src, 10, 9, 34, src, i - 1, %3$c%6$s%3$c, %3$c%7$s%3$c);%1$c%2$csystem(exec);%1$c%2$cif (i > 0)%1$c%2$c%2$cexecve(name, NULL, NULL);%1$c%2$cfree(name);%1$c%2$cfree(cname);%1$c%2$cfree(exec);%1$c%2$cclose(fd);%1$c%2$creturn (0);%1$c}%1$c";
	static const int	i = 1;
	int					fd;
	char				*name;
	char				*cname;
	char				*exec;

	asprintf(&name, "Sully_%d", i);
	asprintf(&cname, "Sully_%d.c", i);
	asprintf(&exec, "clang -Wall -Wextra -Werror %s -o %s", cname, name);
	fd = open(cname, O_WRONLY | O_TRUNC | O_CREAT, 0666);
	dprintf(fd, src, 10, 9, 34, src, i - 1, "%s", "%d");
	system(exec);
	if (i > 0)
		execve(name, NULL, NULL);
	free(name);
	free(cname);
	free(exec);
	close(fd);
	return (0);
}
