#include "libasm.h"

int main(void)
{
	int i;
	char *str;
	int ret;
	char *buf;
	int fd;
	buf = malloc(2);
	str = malloc(4 + 1);

	printf(" == FT_STRLEN == \n");
	i = ft_strlen("caio");
	printf("ft_strlen('caio'): %d\n", i);
	i = strlen("caio");
	printf("   strlen('caio'): %d\n", i);
	//str = malloc(5);
	printf(" == FT_STRCPY == \n");
	str = strcpy(str, "caio");
	printf("   strcpy(str, 'caio'): %s\n", str);
	str = ft_strcpy(str, "caio");
	printf("ft_strcpy(str, 'caio'): %s\n", str);

	printf(" == FT_STRCMP == \n");
	i = ft_strcmp("caio", "caio");
	printf("ft_strcmp('caio', 'caio'): %d\n", i);
	i = strcmp("caio", "caio");
	printf("   strcmp('caio', 'caio'): %d\n", i);

	//write
	printf(" == FT_WRITE == \n");
	if ((ret = write(1, "caio", 4)) == -1)
		printf("X | ft_write | %d | %s\n", ret, strerror(errno));
	else
		printf(" | ft_write(1, 'caio', 4)\n");

	if ((ret = ft_write(1, "caio", 4)) == -1)
		printf("X | write | %d | %s\n", ret, strerror(errno));
	else
		printf(" | write(1, 'caio', 4)\n");

	//read
	printf(" == FT_READ == \n");
	fd = open("teste.txt", O_RDONLY);
	if (read(fd, buf, 2) == -1)
		printf("X | ft_read(fd, buf, 2) | %s\n", strerror(errno));
	else
		printf("%s | ft_read(fd, buf, 2)\n", buf);
	close(fd);
	fd = open("teste.txt", O_RDONLY);
	if (ft_read(fd, buf, 2) == -1)
		printf("X | ft_read(fd, buf, 2) | %s\n", strerror(errno));
	else
		printf("%s | ft_read(fd, buf, 2)\n", buf);
	close(fd);
	//strdup
	printf(" == FT_STRDUP == \n");
	if (!(str = strdup("caio")))
		printf("X | strdup('caio') | errno: %d | |%s|\n", errno, strerror(errno));
	else
		printf("strdup('caio'): |%s|\n", str);

	if (!(str = ft_strdup("caio")))
		printf("X | ft_strdup('caio') | errno: %d | |%s|\n", errno, strerror(errno));
	else
		printf("ft_strdup('caio'): |%s|\n", str);

	return (0);
	/*printf("-----strlen_test-----\n")
	printf("str=\"salut\"   my:%d true:%d\n", ft_strlen("salut"), strlen("salut"));
	printf("str=\"\"   my:%d true:%d\n", ft_strlen(""), strlen(""));
	printf("\n-----strcmp_test-----\n");
	printf("s1=\"salut\" s2=\"salu\"   my:%d true:%d\n", ft_strcmp("salut", "salu"), strcpm("salut", "salu"));
	read_test(void);
	write_test(void);
	strcpy_test(void);
	strdup_test(void);
	errno = 0;
	ft_write(1, "salut", 5);
	printf("%d\n", errno);
	write(1, "salut", 5);
	printf("%d\n", errno);*/
}
