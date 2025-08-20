programa
{
	
	funcao inicio()
	{
		inteiro matriz [3][3], i = 0, j = 0, maior = 0
		para (i = 0; i < 3; i++){
			para (j = 0; j < 3; j++){
				escreva ("Digite o valor da posição [", i, "][", j,"]: ")
				leia (matriz[i][j])
				se (matriz[i][j] > maior){
					maior = matriz[i][j]
				}
			}
		}
		escreva ("O maior valor digitado foi o: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */