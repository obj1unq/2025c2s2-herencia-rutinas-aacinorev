import gimnasia.*

class Persona {
    var property peso
    var property tiempo
    method pesoQuePierdeConRutina(rutina){
        return rutina.calorias(tiempo) / self.kilosPorCaloria()
    }
    method kilosPorCaloria(){
        return 0
    }
    method hacerRutina(rutina){
        peso -= self.pesoQuePierdeConRutina(rutina)
    }
}

class PersonaSedentaria inherits Persona {
    override method kilosPorCaloria(){
        return 7000
    }
    override method hacerRutina(rutina){
        if (peso>50){
            super(rutina)
        }
    }
}

class PersonaAtleta inherits Persona {
    override method tiempo() = 90
    override method pesoQuePierdeConRutina(rutina){
        return super(rutina) - 1
    }
    override method kilosPorCaloria(){
        return 8000
    }
    override method hacerRutina(rutina){
        if (rutina.calorias(self.tiempo()) > 10000){
            super(rutina)
        }
    }
}
