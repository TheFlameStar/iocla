#include <stdio.h>

int main(void)
{
	int v[] = {4, 1, 2, -17, 15, 22, 6, 2};
	int max = v[0], i = 1, n = 8;

	/* TODO: Implement finding the maximum value in the vector */

start:
	if (i < n)
		goto compare;
	goto end;

compare:
	if (v[i] > max)
		goto assoc;
	++i;
	goto start;

assoc:
	max = v[i];
	++i;
	goto start;

end:
	printf("%d\n", max);
	return 0;
}
