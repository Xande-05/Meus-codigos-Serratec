programa
{
	
	funcao inicio()
	{
		inteiro vetor [6], pares = 0
		para (inteiro i = 0; i < 6; i++){
			escreva ("Digite aqui o valor do ", i + 1, "° número: ")	
			leia (vetor[i])
			se (vetor[i] % 2 == 0){
				pares += 1
			}
		}
		escreva ("A quantidade de valores pares digitados foi: ", pares)
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