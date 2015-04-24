package sistemaventas


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ClienteController {
    
    ClienteService clienteService

    def index(Integer max) {
        [listaClientes: Cliente.list()]
    }

    def show(Cliente clienteInstance) {
        respond clienteInstance
    }

    def create() {
        respond new Cliente(params)
    }

    def save(params) {
        clienteService.guardar(params)
        redirect( index(10) )
    }

    def edit(Cliente clienteInstance) {
        respond clienteInstance
    }

    def update(params) {
        clienteService.actualizar(params)
        redirect action: "index"
    }

    def delete(Cliente clienteInstance) {

        clienteService.eliminar(params)
        redirect action: "index"
    }
    
}
