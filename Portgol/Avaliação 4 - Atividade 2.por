programa
{
	
	funcao inicio()
	{
		inteiro matriz [5][5], i = 0, j = 0, soma = 0
		para (i = 0; i < 5; i++){
			para (j = 0; j < 5; j ++){
			
				escreva ("Digite o valor da posição [", i, "][", j,"]: ")
				leia (matriz[i][j])
				soma += matriz[i][j]
			}
		}
		escreva ("A soma de todos os valores da matriz é igual a: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */