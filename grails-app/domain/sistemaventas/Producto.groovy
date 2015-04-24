package sistemaventas

class Producto {

    static belongsTo = Proveedor
    static hasMany   =[proveedores: Proveedor]
    String        nombre
    Double        precioActual
    CatStocks     stock
    CatCategorias categoria

    static constraints = {
        nombre       nullable: true
        precioActual nullable: true
        stock        nullable: true
        categoria    nullable: true
        proveedores  nullable: true
    }
}
