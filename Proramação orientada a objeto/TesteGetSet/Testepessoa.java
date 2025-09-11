package testegetset;

public class Testepessoa {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pessoa p1 = new Pessoa();

        // usando SET
        p1.setNome("Xande");
        p1.setIdade(26);

        // usando GET
        System.out.println("Nome: " + p1.getNome());
        System.out.println("Idade: " + p1.getIdade());
    }
}
