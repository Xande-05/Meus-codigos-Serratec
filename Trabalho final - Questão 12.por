programa
{
	
	funcao inteiro fatorial (inteiro n){
		 se (n == 0){
		 	retorne 1
		 }
    		senao{
        		retorne n * fatorial(n - 1)
		}
	}
	funcao inicio()
	{
		inteiro numero
		escreva ("Digite um número para saber seu fatorial: ")
		leia (numero)
		se (numero < 0){
			enquanto (numero < 0){
				escreva ("Números negativos não são válidos, por favor digite um número positivo: ")
				leia (numero)
			}
		}
		escreva (numero, "! é igual a: ", fatorial(numero))
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 474; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */