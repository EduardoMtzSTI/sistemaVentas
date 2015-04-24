package sistemaventas

class Direccion {

    Integer numero
    String  calle
    String  colonia
    String  estado

    static constraints = {
        numero  nullable: true
        calle   nullable: true
        colonia nullable: true
        estado  nullable: true
    }

    String toString(){
        "$numero, $calle, $colonia, $estado"
    }
}
