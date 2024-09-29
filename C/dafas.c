#include <stdio.h>
#include <locale.h>
#include "Miau.h"
float va1, va2, media;



int main() {
	setlocale(LC_ALL, "");
	cadastrar();
	fx_media();
	system("cls");
	mostrar_resultado();
	
	
	
return 0;	
}


