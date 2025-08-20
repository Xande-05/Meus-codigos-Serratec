programa
{
	
	funcao inteiro soma (inteiro n){
		 se (n == 0){
		 	retorne 0
		 }
    		senao{
        		retorne n + soma(n - 1)
		}
	}
	funcao inicio()
	{
		inteiro numero
		escreva ("Digite um número para saber a soma de 1 até ele: ")
		leia (numero)
		escreva ("A soma total é igual a: ", soma(numero))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 119; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */