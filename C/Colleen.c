#include <stdio.h>

/*
	out
*/

static inline void		out(void)
{
	static const char	*src = "#include <stdio.h>%1$c%1$c/*%1$c%2$cout%1$c*/%1$c%1$cstatic inline void%2$c%2$cout(void)%1$c{%1$c%2$cstatic const char%2$c*src = %3$c%4$s%3$c;%1$c%1$c%2$cprintf(src, 10, 9, 34, src);%1$c}%1$c%1$cint%2$c%2$c%2$c%2$c%2$c%2$cmain(void)%1$c{%1$c%2$c/*%1$c%2$c%2$cmain%1$c%2$c*/%1$c%2$cout();%1$c%2$creturn (0);%1$c}%1$c";

	printf(src, 10, 9, 34, src);
}

int						main(void)
{
	/*
		main
	*/
	out();
	return (0);
}
