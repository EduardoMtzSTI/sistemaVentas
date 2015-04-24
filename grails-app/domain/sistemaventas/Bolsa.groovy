package sistemaventas

class Bolsa {

    Cliente cliente
    String  fecha
    Double  montoTotal
    static hasMany = [ventas: Venta]

    static constraints = {
        cliente    nullable: true
        fecha      nullable: true
        montoTotal nullable: true
        ventas     nullable: true
    }
}
