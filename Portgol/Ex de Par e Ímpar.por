programa
{
	
	funcao inicio()
	{
		inteiro numero[6], par = 0, impar = 0, soma = 0
		para (inteiro i = 0; i < 6; i++)
		{
			escreva ("Número: ")
			leia (numero[i])
			soma += numero[i]
			se (numero[i] % 2 == 0)
			{
				par += 1
			}
			senao
			{
				impar += 1
			}
		}
		escreva ("Quantidade pares: ", par, "\n")
		escreva ("Quantidade ímpares: ", impar, "\n")
		escreva ("Soma: ", soma, "\n")
		escreva ("\n")
		escreva ("Fim do programa!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */