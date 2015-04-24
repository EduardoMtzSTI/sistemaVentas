import sistemaventas.CatCategorias
import sistemaventas.CatStocks

class BootStrap {

    def init = { servletContext ->

        CatStocks stock1 = new CatStocks(nombre: "A").save(flush: true, failOnError: true)
        CatStocks stock2 = new CatStocks(nombre: "B").save(flush: true, failOnError: true)
        CatStocks stock3 = new CatStocks(nombre: "C").save(flush: true, failOnError: true)

        CatCategorias categoria1 = new CatCategorias(nombre: "BEBIDAS").save(flush: true, failOnError: true)
        CatCategorias categoria2 = new CatCategorias(nombre: "ALIMENTOS").save(flush: true, failOnError: true)
        CatCategorias categoria3 = new CatCategorias(nombre: "LIMPIEZA").save(flush: true, failOnError: true)

    }
    def destroy = {
    }
}
