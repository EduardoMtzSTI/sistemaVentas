package sistemaventas

class CatStocks {

    String nombre
    String descripcion

    static constraints = {
        nombre      nullable: true
        descripcion nullable: true
    }

    String toString(){
        nombre
    }
}
