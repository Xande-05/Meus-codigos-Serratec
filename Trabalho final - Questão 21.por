programa
{	
	funcao inicio()
	{
		inteiro numero, matriz [5][5], somaL [5], maiorL = 0, numeroL = 0
		para (inteiro l = 0; l < 5; l++){
			para (inteiro c = 0; c < 5; c++){
				escreva ("Digite o número da posição [", l, "][", c, "] da matriz: ")
				leia (matriz[l][c])
				somaL[l] += matriz[l][c]
			}
		}
		escreva ("A soma das posições é: \n")
		para (inteiro i = 0; i < 5; i++){
			escreva ("Linha ", i+1, " = ",somaL [i], "\n")
			se (maiorL < somaL[i]){
				maiorL = somaL[i]
				numeroL = i
			}
		}
		escreva ("A maior linha é a linha n° ", numeroL+1, " com o valor de: ", maiorL)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 560; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */