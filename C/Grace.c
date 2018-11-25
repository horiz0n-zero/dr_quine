# define SRC "# define SRC %3$c%4$s%3$c%1$c# define INCLUDES int dprintf(int fd, const char * restrict format, ...); int open(const char *path, int oflag, ...); int close(int fildes);%1$c# define START INCLUDES int main(void) { const int fd = open(%3$cGrace_kid.c%3$c, 0x0001 | 0x0200 | 0x0400, 0666); dprintf(fd, SRC, 10, 9, 34, SRC); close (fd); return (0); }%1$c/*%1$c%2$cstart%1$c*/%1$cSTART%1$c"
# define INCLUDES int dprintf(int fd, const char * restrict format, ...); int open(const char *path, int oflag, ...); int close(int fildes);
# define START INCLUDES int main(void) { const int fd = open("Grace_kid.c", 0x0001 | 0x0200 | 0x0400, 0666); dprintf(fd, SRC, 10, 9, 34, SRC); close (fd); return (0); }
/*
	start
*/
START
