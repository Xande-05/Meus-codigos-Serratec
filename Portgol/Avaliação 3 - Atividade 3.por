programa
{
	
	funcao inicio()
	{
		inteiro vetor [5], maior = 0
		para (inteiro i = 0; i < 5; i++){
			escreva ("Digite aqui o valor do ", i + 1, "° número: ")	
			leia (vetor[i])
			se (vetor[i] > maior){
				maior = vetor[i]
			}
		}
		escreva ("O maior valor digitado foi: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */