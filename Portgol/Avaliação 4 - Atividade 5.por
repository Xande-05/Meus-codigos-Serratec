programa
{
	
	funcao inicio()
	{
		inteiro matriz [3][3], i = 0, j = 0, multiplicador
		para (i = 0; i < 3; i++){
			para (j = 0; j < 3; j++){
				escreva ("Digite o valor da posição [", i, "][", j,"]: ")
				leia (matriz[i][j])
			}
		}
		escreva ("Digite um número para multiplicar cada idem da matriz: ")
		leia (multiplicador)
		escreva ("Matriz multiplicada: \n")
		para (i = 0; i < 3; i++){
			para(j = 0; j < 3; j ++){
				se (j == 2){
					escreva (matriz[i][j] * multiplicador, "\n")
				}
				senao{
					escreva (matriz[i][j] * multiplicador, " - ")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */