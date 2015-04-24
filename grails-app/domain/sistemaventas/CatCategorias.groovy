package sistemaventas

class CatCategorias {

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
