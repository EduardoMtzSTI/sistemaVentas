package sistemaventas

class CatTefonos {

    Long   numero
    String descripcion

    static constraints = {
        numero      nullable: true
        descripcion nullable: true
    }
}
