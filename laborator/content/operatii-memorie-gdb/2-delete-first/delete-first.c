#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* delete_first(char *s, char *pattern)
{
	char* p = strstr(s, pattern);
	if (p)
		strcpy(p, p + strlen(pattern));
	return s;
}

int main(){
	char *s = "Ana are mere";
	char *pattern = "re";
	char* p = strdup(s);

	// Decomentati linia dupa ce ati implementat functia delete_first.
	printf("%s\n", delete_first(p, pattern));

	return 0;
}
