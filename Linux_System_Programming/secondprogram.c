# include <stdio.h>
# include <stdlib.h>

// To read from the file if it exists...

int main() {

	int num;
	FILE *fptr;

	if ((fptr = fopen("test.txt", "r")) == NULL)
	{
		printf("ERROR");
		exit(1);
}
	fscanf(fptr, "%d", &num);
	printf("value of number is=%d", num);
	fclose(fptr);
}
