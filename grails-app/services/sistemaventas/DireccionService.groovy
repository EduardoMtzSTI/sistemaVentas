package sistemaventas

import grails.transaction.Transactional

@Transactional
class DireccionService {

    def serviceMethod() {

    }

    def guardar(params){
        Direccion direccion = new Direccion()
        direccion.setProperties(params)
        if(direccion.validate())
            direccion.save(flush: true, failOnError: true)

        direccion
    }
}
