// Playground - noun: a place where people can play

import UIKit

//Conditional Statements

let elementalType = "Fire"

if elementalType == "Fire" {
    println("Use water!")
}


if elementalType == "Fairy" {
    println("Use poison!")
} else {
    println("Draco Meteor!")
}


if elementalType == "Fairy" {
    println("Use poison!")
} else if elementalType == "Bug" {
    println("kill it with fire!")
} else {
    println("Draco Meteor Again.!")
}


switch elementalType {
case "Fairy":
    println("Use poison!")
case "Bug":
    println("kill it with fire!")
default:
    println("Draco Meteor Again.!")
}


let baseAttack = 89

switch baseAttack {
case 1...30:
    println("Just release it")
case 31...70:
    println("Meh")
default:
    println("Hackemon!")
}


let baseSpecialAttack = 81
let baseMixedAttack = (baseAttack, baseSpecialAttack)

switch baseMixedAttack {
case (80...200, 80...200):
    println("Good mixed sweeper.")
case (_, 80...200):
    println("Good special sweeper.")
default:
    println("Not competitive enough.")
}


switch baseMixedAttack {
case let (attack, specialAttack) where attack == specialAttack:
    println("Perfectly balanced attack stats.")
default:
    println("Ubalanced attack stats.")
}


//Optionals
var dropItemName: String?
dropItemName = "Wizard's Relic"
dropItemName = nil


if dropItemName == nil {
    println("Out of luck.")
}





//Functions
func quarterCircleforward() {
    println("down")
    println("down-forward")
    println("forward")
}

quarterCircleforward()


func quarterCircle(#direction: String = "forward") {
    println("down")
    println("down-\(direction)")
    println(direction)
}

//quarterCircle("forward")
quarterCircle(direction: "forward")


func canPerformSuperCombo(gauge: Float) -> Bool {
    return gauge == 1.0
}


canPerformSuperCombo(0.8)



func canPerformShinakuHadoken(gauge: Float, name: String) -> Bool {
    if name == "Ryu" || name == "Sakura" {
        return canPerformSuperCombo(gauge)
    } else {
        return false
    }
}

canPerformShinakuHadoken(1.0, "Ryu")




func canPerformUltraCombo(revengeGauge: Float) -> (Bool, damageMultiplier: Float) {
    if revengeGauge >= 0.5 {
        if revengeGauge == 1.0 {
            return (true, 1.5)
        } else {
            return (true, 1.0)
        }
    } else {
        return (false, 0)
    }
}

canPerformUltraCombo(0.6)


//External parameter names

func quarterCircle(relativeDirection direction: String) {
    println("down")
    println("down-\(direction)")
    println(direction)
}

quarterCircle(relativeDirection: "backward")


//Variadic Parameters

func directionalInput(directions: String...) {
    for direction in directions {
        println(direction)
    }
}


directionalInput("down", "up")


























