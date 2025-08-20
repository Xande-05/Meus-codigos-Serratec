programa
{
	
	funcao inicio()
	{
		inteiro vetor [5]
		para (inteiro i = 0; i < 5; i++){
			escreva ("Digite aqui o valor do ", i + 1, "° número: ")	
			leia (vetor[i])		
		}
		escreva ("Valores digitados: ")
		para (inteiro i = 0; i < 5; i++){
			se (i == 4){
				escreva (vetor[i])				
			}
			senao{
				escreva (vetor[i], " - ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */