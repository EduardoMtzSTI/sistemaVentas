package sistemaventas

class Proveedor {

    static hasMany = [productos:Producto]
    String    nombre
    Long      telefono
    String    paginaWeb
    Direccion direccion

    static constraints = {
        nombre    nullable: true
        telefono  nullable: true
        paginaWeb nullable: true
        direccion nullable: true
    }

    String toString(){
        nombre
    }
}
