# include <stdio.h>
# include <stdlib.h>

int main() {

	int num;
	FILE *fptr;
	fptr = fopen("test.txt", "w");

	if(fptr == NULL)
	{
		printf("Error");
		exit(1);
	}
	printf("Enter the num:");
	scanf("%d", &num);
	fprintf(fptr, "%d", num);
	fclose(fptr);
}