package musica.test

class Artista {

    static constraints = {
    }
	
	String nome
	static hasMany = [musicas:Musica]
	
	public String toString() {
		return nome
	}
}
