programa
{
	real nota1=0.0, nota2=0.0, media
	
	funcao inicio()
	{
		leitura()
		//media = calcularMedia(nota1, nota2)
		escreva("Média:",calcularMedia(nota1, nota2))
		
	}


	funcao leitura(){
		escreva("nota1:")
		leia(nota1)
		escreva("nota2:")
		leia(nota2)

	}
	

	funcao real calcularMedia(real n1, real n2){
		retorne (n1+n2)/2
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */