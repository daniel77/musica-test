package musica.test

class Musica {

    static constraints = {
    }
	
	String nome
	Date dataLancamento
	static belongsTo = [artista:Artista]
	
	public String toString() {
		return nome
	}
}
