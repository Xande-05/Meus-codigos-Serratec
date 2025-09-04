programa
{
	
	funcao inicio()
	{
		inteiro numero, i, contador = 0
		escreva ("Digite aqui um número para saber se ele é ou não é um número primo: ")
		leia (numero)
		se (numero < 0){
			enquanto (numero < 0){
				escreva ("Números negativos são inválidos, por favor digite um número positivo: ")
				leia (numero)
			}
		}
		se (numero == 0 ou numero == 1){
			escreva ("O número ", numero, " não é primo\n")
		}
		senao se (numero > 1){
			escreva ("Os número divisíveis por ", numero, " são: ")
			para (i = 1; i <= numero; i ++){
				se (numero % i == 0){
					se (i == numero){
						escreva (i, "\n")
					}
					senao{
						escreva (i, " - ")
						contador += 1
					}
				}
			}
			se (contador >= 2){
				escreva ("O número ", numero, " não é primo\n")
		}
			senao{
				escreva ("O número ", numero, " é primo\n")
			}
		}
		escreva ("Fim do programa!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */