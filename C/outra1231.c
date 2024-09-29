#include<stdio.h>
void outra(void);
int x = 5;
int main(){
	printf("\nEm Main() x = %d", x);
	outra();
}

void outra(void) {
	int x = 10;
	printf("\Em outra() x = %d", x);
}
