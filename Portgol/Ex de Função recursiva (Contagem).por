programa
{
	funcao vazio contagem (inteiro n){
    se (n >= 0){
        escreva(n, " ")
        contagem(n-1)
    }
}
    funcao inicio()
    {
        inteiro numero
        escreva ("Digite um número para ver sua contagem regressiva até 0: ")
        leia (numero)
        contagem(numero)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 84; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */