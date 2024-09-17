#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <stdlib.h>

#define SIGN(X) (((X) > 0) - ((X) < 0))

int my_strcmp(const char *s1, const char *s2)
{
	int i = 0;
	while (*(s1 + i) && *(s2 + i)) {
		if (*(s1 + i) != *(s2 + i))
			break;
		++i;
	}
	if ((*s1 + i) == *(s2 + i))
		return 0;
	else if (*(s1 + i) < *(s2 + i))
		return -1;
	else
		return 1;
}

void *my_memcpy(void *dest, const void *src, size_t n)
{
	int i;
	for (i = 0; i < n; ++i)
		*(char*)(dest + i) = *(char*)(src + i);
	return dest;
}

char *my_strcpy(char *dest, const char *src)
{
	int l = strlen(src), i;
	for (i = 0; i < l; ++i)
		*(dest + i) = *(src + i);
	*(dest + i) = '\0';
	return dest;
}

int main() {
	char s1[] = "Abracadabra";
	char s2[] = "Abracababra";
	char src[] = "Learn IOCLA, you must!";
	char *dest = malloc(sizeof(src));


	/*
	Decomentati pe rand cate un assert pe masura ce implementati o functie.
	Daca functia voastra este implementata corect atunci asertia se va realiza
	cu succes. In caz contrar, programul va crapa.
	*/
	// assert(SIGN(my_strcmp(s1, s2)) == SIGN(strcmp(s1, s2)));
	// assert(my_memcpy(dest, src, sizeof(src)) == memcpy(dest, src, sizeof(src)));
	// assert(my_strcpy(dest, src) == strcpy(dest, src));
	free(dest);

	return 0;
}
