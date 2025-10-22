import gimnasia.*

class Persona {
    var property peso
    method tiempo()
    method pesoQuePierdeConRutina(rutina){
        return rutina.calorias(self.tiempo()) / self.kilosPorCaloria()
    }
    method kilosPorCaloria(){
        return 0
    }
    method hacerRutina(rutina){
        self.validarLaRutina(rutina)
        peso -= self.pesoQuePierdeConRutina(rutina)
    }
    method validarLaRutina(rutina)
}

class PersonaSedentaria inherits Persona {
    var property tiempo
    override method kilosPorCaloria(){
        return 7000
    }
    override method validarLaRutina(rutina){
        if (peso<50){
            self.error("No puede hacer la rutina porque su peso es menor a 50")
        }
    }
}

class PersonaAtleta inherits Persona {
    const property tiempo = 90
    override method pesoQuePierdeConRutina(rutina){
        return super(rutina) - 1
    }
    override method kilosPorCaloria(){
        return 8000
    }

    override method validarLaRutina(rutina){
        if (rutina.calorias(self.tiempo()) < 10000){
            self.error("No puede hacer la rutina porque no consume las calorias suficientes")
        }
    }
}
