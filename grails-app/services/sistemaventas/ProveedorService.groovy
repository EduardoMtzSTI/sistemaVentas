package sistemaventas

import grails.transaction.Transactional

@Transactional
class ProveedorService {

    DireccionService direccionService

    def serviceMethod() {

    }

    def guardar(params){
        Proveedor proveedor = new Proveedor()
        proveedor.setProperties(params)
        proveedor.setDireccion(direccionService.guardar(params))
        if(proveedor.validate())
            proveedor.save(flush: true, failOnError: true)
    }

    def actualizar(params){
        Proveedor proveedor = Proveedor.findById((params.id).toLong())
        proveedor.setProperties(params)
        if(proveedor.validate())
            proveedor.save(flush: true, failOnError: true)
    }

    def eliminar(params){
        Proveedor proveedor = Proveedor.findById((params.id).toLong())
        proveedor.delete()
    }

    def mostrar(params){
        Proveedor proveedor = Proveedor.findById((params.id).toLong())
        proveedor
    }

}
