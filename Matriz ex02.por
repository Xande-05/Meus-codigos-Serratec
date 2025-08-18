programa
{
	
	funcao inicio()
	{
		inteiro numero, matriz [4][2] = { {1,2},
								    {3,4},
								    {5,6},
								    {7,8}}
								    
		escreva ("Digite um número para saber se ele está na matriz: ")
		leia (numero)
		para (inteiro i = 0; i < 4; i++){
			para (inteiro j = 0; j < 2; j++){
				se (matriz[i][j] == numero){
					escreva ("Este número existe na matriz! Escolha um novo valor.\n")
					leia (matriz[i][j])
				}
			}
		}
		para (inteiro i = 0; i < 4; i++){
			para (inteiro j = 0; j < 2; j++){
				escreva (matriz[i][j])
				se (j == 0){
					escreva ("-")
				}
			}
			escreva ("\n")
		}
		escreva ("Fim do programa!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 592; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */