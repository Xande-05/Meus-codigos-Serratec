programa
{
	
	funcao inicio()
	{
		cadeia time[6], campeao = "", ultimo =""
		inteiro pontos[6], maior = 0, menor = 0
		para(inteiro i = 0; i < 6; i++){
			escreva ("Time: \n")
			leia (time[i])
			escreva ("Pontuação: \n")
			leia (pontos[i])
			se (pontos[i] > maior){
				maior = pontos[i]
				campeao = time[i]
			}
			se (pontos[i] < menor ou menor == 0){
				menor = pontos[i]
				ultimo = time[i]
			}
		}
		escreva ("Time campeão: ", campeao, "\n")
		escreva ("Último colocado: ", ultimo, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 485; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */