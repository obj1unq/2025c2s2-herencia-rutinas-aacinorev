class Rutina {
    method calorias(tiempo){
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }
    method descanso(tiempo)
    method intensidad()
}

class Running inherits Rutina {
    var property intensidad
    override method descanso(tiempo){
        if(tiempo>20){
            return 5
        }
        else {
            return 2
        }
    }
}

class Maraton inherits Running {
    override method calorias(tiempo){
        return super(tiempo) * 2
    }
}

class Remo inherits Rutina {
    override method intensidad() = 1.3
    override method descanso(tiempo) = tiempo / 5
}

class RemoCompeticion inherits Remo {
    override method intensidad() = 1.7
    override method descanso(tiempo){
        return 2.max(super(tiempo) - 3)
    }
}
