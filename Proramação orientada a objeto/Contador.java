
public class Contador {

	public static void main(String[] args) {
		int par = 0, impar = 0;
		for (int i = 0; i <= 30; i++) {
			if (i%2 == 0) {
				System.out.println(i);
				par += 1;
			}
			else {
				System.out.println(i);
				impar += 1;
			}
		}
		System.out.println("Tivemos "+ par + " números pares");
		System.out.println("Tivemos "+ impar + " números ímpares");

	}

}
