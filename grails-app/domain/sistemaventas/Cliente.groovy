package sistemaventas

class Cliente {

    static hasMany = [bolsas: Bolsa, telefonos: CatTefonos]

    String     nombre
    Direccion  direccion

    static constraints = {
        nombre    nullable: true
        direccion nullable: true
        bolsas    nullable: true
        telefonos nullable: true
    }
}
