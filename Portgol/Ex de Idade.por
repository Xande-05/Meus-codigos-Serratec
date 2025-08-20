programa
{	
	funcao inicio()
	{
		inteiro idade, maior = 0, menor = 0, contador = 1
		enquanto (contador <= 5)
		{
			escreva ("Digite a ", contador, "° idade: ")
			leia (idade)
			se (idade >= 18)
			{
				maior += 1
			}
			senao
			{
				menor += 1
			}
			contador += 1
		}
		escreva ("Temos ", maior, " pessos maiores de idade e ", menor, " pessoas menores de idade!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */