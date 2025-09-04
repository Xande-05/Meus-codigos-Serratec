programa
{
	
	funcao inicio()
	{
		inteiro i = 0, contadorM = 0, contadorF = 0
		real altura, somaM = 0.0, mediaM = 0.0, somaF = 0.0, mediaF = 0.0
		cadeia sexo
		enquanto (i < 5){
			escreva ("Digite aqui o sexo da pessoa [m/f]: ")
			leia (sexo)
			se (sexo == "m" ou sexo == "M"){
				escreva ("Digite agora a altura da pessoa em M: ")
				leia (altura)
				i += 1
				se (altura < 0){
					pare
				}
				somaM += altura
				contadorM += 1
			}
			senao se (sexo == "f" ou sexo == "F"){
				escreva ("Digite agora a altura da pessoa em M: ")
				leia (altura)
				i += 1
				se (altura < 0){
					pare
				}
				somaF += altura
				contadorF += 1
			}
			senao{
				escreva ("Opção de sexo inválida!\n")
			}
		}
		mediaM = somaM /  contadorM
		mediaF = somaF / contadorF
		escreva ("A media de alturas dos homens é igual a: ", mediaM, "\n")
		escreva ("A media de alturas das mulheres é igual a: ", mediaF, "\n")
		escreva ("Fim do programa!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 780; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */