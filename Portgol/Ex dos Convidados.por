programa
{
	
	funcao inicio()
	{
		cadeia convidado[21]
		inteiro opcao, posicao, conta, contador = 0
		logico continuar = verdadeiro
		enquanto (continuar){
			escreva ("-----------------------------\n")
			escreva ("MENU DE OPÇÕes:\n")
			escreva ("1 - Inserir nome\n")
			escreva ("2 - Lista de convidados\n")
			escreva ("3 - Remover nome\n")
			escreva ("4 - Pagamento\n")
			escreva ("0 - Sair\n")
			escreva ("Digite a opção: ")
			leia (opcao)

			escolha (opcao){
				caso 1:
				escreva ("Digite o número do convidado: ")
				leia (posicao)
				se (convidado[posicao] == ""){
					escreva ("Digite o nome do convidado: ")
					leia (convidado[posicao+1])
					contador += 1
				}
				senao{
					escreva("Já existe um convidado nesta posiçaõ\n")
				}
				pare
				caso 2:
				
				para (inteiro i = 0; i < 21; i++)
				{
					escreva (i+1, "°-", convidado[i], "\n")
				}
				pare
				caso 3:
				escreva ("Digite a posição do convidado que deseja remover: ")
				leia (posicao)
				se (convidado[posicao] == ""){
					escreva ("Não existe nenhum convidado nesta posição.")
				}
				senao{
				convidado[posicao] = ""
				escreva ("Convidado removido!")
				contador -= 1
				}
				pare
				caso 4:
				conta = contador * 120
				escreva ("Valor total da compra: R$", conta, ",00\n")
				pare
				caso 0:
				escreva ("Fim do programa!\n")
				continuar = falso
				pare
				caso contrario:
				escreva ("Opção inválida!\n")
				pare
		}
	}
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */