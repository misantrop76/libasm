#include "libasm.h"

int main(void)
{
	int i;
	char *str;
	int ret;
	char *buf;
	int fd;

	buf = malloc(sizeof(char) * 2);
	str = malloc(sizeof(char) * 6);
	//strlen
	printf(" == FT_STRLEN == \n");
	i = ft_strlen("salut");
	printf("ft_strlen('salut'): %d\n", i);
	i = strlen("caio");
	printf("   strlen('salut'): %d\n\n", i);




	//strcpy
	printf(" == FT_STRCPY == \n");
	str = strcpy(str, "salut");
	printf("   strcpy(str, 'salut'): %s\n", str);
	str = ft_strcpy(str, "salut");
	printf("ft_strcpy(str, 'salut'): %s\n\n", str);
	
	
	
	
	//strcmp
	printf(" == FT_STRCMP == \n");
	i = ft_strcmp("salut", "salut");
	printf("ft_strcmp('salut', 'salut'): %d\n", i);
	i = strcmp("salut", "salut");
	printf("   strcmp('salut', 'salut'): %d\n", i);

	i = ft_strcmp("salu", "salut");
	printf("ft_strcmp('salu', 'salut'): %d\n", i);
	i = strcmp("salu", "salut");
	printf("   strcmp('salu', 'salut'): %d\n\n", i);
	
	
	//write
	printf(" == FT_WRITE == \n");
	if ((ret = write(1, "salut", 5)) == -1)
		printf("X | ft_write | %d | %s\n", ret, strerror(errno));
	else
		printf(" | ft_write(1, 'salut', 4)\n");

	if ((ret = ft_write(1, "salut", 5)) == -1)
		printf("X | write | %d | %s\n\n", ret, strerror(errno));
	else
		printf(" | write(1, 'salut', 5)\n\n");
	
	
	
	
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
		printf("X | ft_read(fd, buf, 2) | %s\n\n", strerror(errno));
	else
		printf("%s | ft_read(fd, buf, 2)\n\n", buf);
	close(fd);
	
	
	
	
	//strdup
	printf(" == FT_STRDUP == \n");
	if (!(str = strdup("salut")))
		printf("X | strdup('salut') | errno: %d | |%s|\n", errno, strerror(errno));
	else
		printf("strdup('salut'): |%s|\n", str);
	if (!(str = ft_strdup("salut")))
		printf("X | ft_strdup('salut') | errno: %d | |%s|\n", errno, strerror(errno));
	else
		printf("ft_strdup('salut'): |%s|\n", str);
	return (0);
}
