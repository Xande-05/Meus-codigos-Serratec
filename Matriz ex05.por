programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro vetor[10]
		
		para (inteiro i = 0; i < 10; i++){
			vetor[i] = sorteia (1, 10)
		}
		para (inteiro i = 0; i < 10; i++){
			escreva (vetor[i])
			se (i == 9){
				escreva ("\n")
			}
			senao{
				escreva (" - ")
			}
		}
		escreva ("Fim do programa")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */