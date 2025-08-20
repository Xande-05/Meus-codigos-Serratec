programa
{
	
	funcao inicio()
	{
		inteiro produto, quantidade1 = 0, quantidade2 = 0, quantidade3 = 0, quantidade4 = 0, quantidade5 = 0
		real conta = 0.0
		escreva ("Lanchonete!!")
		escreva ("\n")
		escreva ("1 - Hambúrguer........R$3.00\n")
		escreva ("2 - Cheeseburguer.....R$2.50\n")
		escreva ("3 - Fritas............R$2.50\n")
		escreva ("4 - Refrigerante......R$1.00\n")
		escreva ("5 - Milkshake.........R$3.00\n")
		escreva ("0 - Sair\n")
		escreva ("-")
		leia (produto)
		escreva ("\n")
		se (produto == 1)
		{
			quantidade1 += 1
			conta += 3.00
		}
		se (produto == 2)
		{
			quantidade2 += 1
			conta += 2.50
		}
		se (produto == 3)
		{
			quantidade3 += 1
			conta += 2.50
		}
		se (produto == 4)
		{
			quantidade4 += 1
			conta += 1.00
		}
		se (produto == 5)
		{
			quantidade5 += 1
			conta += 3.00
		}
		enquanto (produto != 0)
		{
			escreva ("1 - Hambúrguer........R$3.00\n")
			escreva ("2 - Cheeseburguer.....R$2.50\n")
			escreva ("3 - Fritas............R$2.50\n")
			escreva ("4 - Refrigerante......R$1.00\n")
			escreva ("5 - Milkshake.........R$3.00\n")
			escreva ("0 - Sair\n")
			escreva ("-")
			leia (produto)
			escreva ("\n")
			se (produto == 1)
			{
				quantidade1 += 1
				conta += 3.00
			}
			se (produto == 2)
			{
				quantidade2 += 1
				conta += 2.50
			}
			se (produto == 3)
			{
				quantidade3 += 1
				conta += 2.50
			}
			se (produto == 4)
			{
				quantidade4 += 1
				conta += 1.00
			}
			se (produto == 5)
			{
				quantidade5 += 1
				conta += 3.00
			}
		}
		escreva ("Vamos as contas!")
		escreva ("\n")
		escreva ("1 - Hambúrguer........", quantidade1, " Unidades\n")
		escreva ("2 - Cheeseburguer.....", quantidade2, " Unidades\n")
		escreva ("3 - Fritas............", quantidade3, " Unidades\n")
		escreva ("4 - Refrigerante......", quantidade4, " Unidades\n")
		escreva ("5 - Milkshake.........", quantidade5, " Unidades\n")
		escreva ("Valor da conta: R$", conta) 
		escreva ("\n")
		
		escreva ("Fim do rpograma!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */