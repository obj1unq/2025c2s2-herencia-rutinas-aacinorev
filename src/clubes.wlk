import gimnasia.*
import personas.*

class Club {
    var property predios = []
    method elMejorPredioPara(persona){
        predios.max({predio => predio.caloriasQuemadasTodasLasRutinas(persona)})
    }
    method prediosTranquisPara(persona){
        predios.filter({predio => predio.esPredioTranquiPara(persona)})
    }
    method losRutinasMasExigentesPara(persona){
        predios.map({predio => predio.laRutinaExigentePara(persona)})
    }
}

class Predio {
    var property rutinas = []
    method esPredioTranquiPara(persona){
        rutinas.any({rutina => rutina.pesoQuePierdeConRutina(rutina)<500})
    }
    method laRutinaExigentePara(persona){
        rutinas.max({rutina => rutina.pesoQuePierdeConRutina(rutina)})
    }
    method caloriasQuemadasTodasLasRutinas(persona){
        rutinas.sum({rutina => rutina.pesoQuePierdeConRutina(rutina)})
    }

}