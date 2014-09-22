// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Follable {
    func meter()
    func sacar()
}
protocol Masticable {
    func abre()
    func cierra()
}

class Tio: Follable, Masticable {
    func meter() {
        println("Mete")
    }
    func sacar() {
        println("Saca")
    }
    func abre() {
        println("abre")
    }
    func cierra() {
        println("cierra")
    }
}
class Tia: Follable, Masticable {
    func meter() {
        println("Mete")
    }
    func sacar() {
        println("Saca")
    }
    func abre() {
        println("abre")
    }
    func cierra() {
        println("cierra")
    }
}

func  venga<T: Follable, Masticable>(tio:T, tia:T) -> T {
    tio.meter()
    tia.meter()
    tio.sacar()
    tia.sacar()
    return Tio() as T
}


let tio = Tio()
let tia = Tia()

venga(tio, tia)


