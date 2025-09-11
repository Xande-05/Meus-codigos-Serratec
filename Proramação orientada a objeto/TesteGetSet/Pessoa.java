package testegetset;

public class Pessoa {
		 	private String nome; // atributo privado
		    private int idade;
	
		    // GET (pegar valor)
		    public String getNome() {
		        return nome;
		    }
	
		    public int getIdade() {
		        return idade;
		    }
	
		    // SET (atribuir valor)
		    public void setNome(String nome) {
		        this.nome = nome;
		    }
	
		    public void setIdade(int idade) {
		        this.idade = idade;
		}
}