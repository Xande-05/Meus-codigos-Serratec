package primeiroprograma;

import java.util.Scanner;

public class Nota {
	public static void main(String[] args) {
		Scanner teclado = new Scanner (System.in);
		System.out.print("Digite seu nome: ");
		String nome = teclado.nextLine();
		System.out.print("Digite sua nota: ");
		float nota = teclado.nextFloat();
		System.out.println("A nota de "+ nome +" é: " + nota);
	}
}