programa
{
	
	funcao inicio()
	{
		inteiro numero, maior = 0, menor = 0, matriz [4][3] = { {1,2,3},
								    					 {4,5,6},
								    					 {7,8,9},
								    					 {10,11,12}}
		para (inteiro i = 0; i < 4; i++){
			para (inteiro j = 0; j < 3; j++){
				escreva (matriz[i][j])
				se (maior < matriz[i][j]){
					maior = matriz[i][j]
				}
				se (menor > matriz[i][j] ou menor == 0){
					menor = matriz[i][j]
				}
				se (j == 0 ou j == 1){
					escreva ("-")
				}
			}
			escreva ("\n")
		}
		escreva ("---------------------\n")
		escreva ("Maior valor: ", maior, "\n")
		escreva ("Menor valor: ", menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 544; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */