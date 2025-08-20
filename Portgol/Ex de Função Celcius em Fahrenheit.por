programa
{
	
	funcao real conversor (real n1){
		retorne (n1 * 1.8) + 32
	}
	funcao inicio()
	{
		real graus
		escreva ("Digite os graus em Celcius: ")
		leia (graus)
		escreva (graus, "° em Fahrenheit é igual a: ", conversor(graus), "°")
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 78; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */