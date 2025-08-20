programa
{
	
	funcao inicio()
	{
		inteiro contador = 0
		cadeia nick, senha, matriz[5][2] = {{"Ale", "1234"},
						   {"Jô", "1505"},
						   {"Ana","0508"},
						   {"Lê","1999"},
						   {"José", "1959"}}
		escreva ("Digite seu Nick: ")
		leia(nick)
		escreva ("Digite sua senha: ")
		leia(senha)
		para (inteiro i = 0; i < 5; i++){
			para (inteiro j = 0; j < 2; j++){
				se (matriz[i][j] == nick){
					se (matriz[i][j+1] == senha){
						escreva ("Bem vindo ao sistema!\n")
						contador =+ 1
				}
			}
		}
		
	}
	se (contador == 0){
		escreva("Senha ou nick incorreto(s).\n")}
	escreva ("Fim do programa!")
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */