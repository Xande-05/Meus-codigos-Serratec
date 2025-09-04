
public class Multiplo2 {

	public static void main(String[] args) {
		int java = 0;
		for (int i = 1; i <= 22; i++) {
			if (i%2 == 0) {
				System.out.println(i + " Java");
				java += 1;
			}
			else {
				System.out.println(i);
			}
		}
		System.out.println("Tivemos "+ java + " números múltiplos de 2");
	}

}

