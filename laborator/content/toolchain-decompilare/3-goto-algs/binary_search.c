#include <stdio.h>

int main(void)
{
	int v[] =  {1, 2, 15, 51, 53, 66, 202, 7000};
	int dest = v[2]; /* 15 */
	int start = 0;
	int end = sizeof(v) / sizeof(int) - 1;

	/* TODO: Implement binary search */
binary:
	printf("start= %d   end= %d  middle= %d\n", start, end, (start + end) / 2);
	if (v[(start + end) / 2] == dest || start > end)
		goto end;
	if (v[(start + end) / 2] > dest) {
		end = (start + end) / 2 - 1;
		goto binary;
	}
	start = (start + end) / 2 + 1;
	goto binary;

end:
	if (start > end) {
		printf("Nu exista\n");
		return 0;
	}
	printf("Exista pe pozitia %d\n", (start + end) / 2);
	return 0;		
}
