#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

ssize_t	ft_write(int fd, void const *buf, size_t nbyte);
int ft_strlen(char *str);
int ft_strcmp(char *s1, char *s2);
char *ft_strcpy(char *dest, char *src);
char *ft_strdup(char *str);
void test(void);


int main(int ac, char **av)
{
	test();
	//printf("my = %d|\n", ft_strcmp("salu", "salut"));
	//printf("true = %d|\n", strcmp("salu", "salut"));
}
