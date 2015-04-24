package sistemaventas


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProveedorController {

    ProveedorService proveedorService

    def index(Integer max) {
       [listaProveedores: Proveedor.list()]
    }

    def show(Proveedor proveedorInstance) {
        respond proveedorInstance
    }

    def create() {
        respond new Proveedor(params)
    }

    def save(params) {
        proveedorService.guardar(params)
        redirect( index(10) )
    }

    def edit(Proveedor proveedorInstance) {
        respond proveedorInstance
    }

    def update(params) {
        proveedorService.actualizar(params)
        redirect action: "index"
    }

    def delete(Proveedor proveedorInstance) {

        proveedorService.eliminar(params)
        redirect action: "index"
    }

}
