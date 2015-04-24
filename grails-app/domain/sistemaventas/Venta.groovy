package sistemaventas

class Venta {

    Producto producto
    Integer  cantidad
    Double   descuento
    Double   monto

    static constraints = {
        producto  nullable: true
        cantidad  nullable: true
        descuento nullable: true
        monto     nullable: true
    }
}
