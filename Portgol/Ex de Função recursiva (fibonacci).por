programa
{	
	funcao inteiro fibonacci (inteiro n){
		 inteiro fib
		 se (n == 0){
		 	retorne 0
		 }
		 senao se (n == 1){
		 	retorne 1
		 }
    		senao{
        		retorne fibonacci(n-1) + fibonacci(n-2)
		}
	}
	funcao inicio()
	{
		inteiro numero
		escreva ("Digite um número da casa da sequ}encia de fibonacci que você quer saber: ")
		leia (numero)
		escreva (fibonacci(numero))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */