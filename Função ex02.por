programa
{
	inteiro numero, i = 0

	funcao inicio()
	{
		escreva("Digite um número para saber sua tabuada: ")
		leia (numero)
		tabuada(numero)
	}
	
	funcao vazio tabuada (inteiro num){
		para (i = 1; i <=10; i++){
				escreva (i, " X ", num, " = ", i * num, "\n")
			}
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 269; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */