programa
{
	
	funcao inicio()
	{
		cadeia nome [5]
		real altura [5]
		para (inteiro i = 0; i < 5; i++){
			escreva("Nome: ")
			leia (nome[i])
			escreva ("Altura: ")
			leia (altura[i])
			enquanto (altura[i] <= 0){
				escreva ("Altura inválida, digite uma altura correta por favor: ")
				leia (altura[i])
			}
		}
		limpa()
		escreva("Informações das pessoas: \n")
		para (inteiro i = 0; i < 5; i ++){
			escreva ("Pessoa: ", nome[i], ". Altura: ", altura[i], "M.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 391; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */