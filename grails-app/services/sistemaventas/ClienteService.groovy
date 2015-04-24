package sistemaventas

import grails.transaction.Transactional

@Transactional
class ClienteService {

    DireccionService direccionService

    def serviceMethod() {

    }

    def guardar(params){
        Cliente cliente = new Cliente()
        cliente.setProperties(params)
        cliente.setDireccion(direccionService.guardar(params))
        if(cliente.validate())
            cliente.save(flush: true, failOnError: true)
    }

    def actualizar(params){
        Cliente cliente = Cliente.findById((params.id).toLong())
        cliente.setProperties(params)
        if(cliente.validate())
            cliente.save(flush: true, failOnError: true)
    }

    def eliminar(params){
        Cliente cliente = Cliente.findById((params.id).toLong())
        cliente.delete()
    }

    def mostrar(params){
        Cliente cliente = Cliente.findById((params.id).toLong())
        cliente
    }

}
