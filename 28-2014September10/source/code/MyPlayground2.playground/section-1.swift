// Playground - noun: a place where people can play

import UIKit

//Dictionary
var bossNames = ["Plaza España": "Mecha", "Planta Quimica": "Water"]
var moreBossNames: [String: String] = [:]

//var bossNames: [String: String] = ["Plaza España": "Mecha", 2: "Water"] // -> Error

bossNames.count
bossNames.isEmpty

bossNames["Planta Quimica"]
bossNames["Planta Quimica"] = nil


//Tuples
let alertMode = (4, "Red")
let evasionMode: (Int, String) = (3, "Orange")
let cautionMode = (level:2, color: "Lime")

let alertColor = alertMode.1
let (_, evasionColor) = evasionMode
evasionColor

let (evasionLevel, _) = evasionMode
evasionLevel

let cautionColor = cautionMode.color

var normalMode = (1, "Blue")
normalMode.1 = "Green"
normalMode

//Operators
let pokemonName = "Pikachu"
let mirrorPokemonName = pokemonName
mirrorPokemonName


"Lighting" + " " + "Rod"

let moves = ["Tail Whip", "Thunder Shock"]
let moreMoves = ["Growl", "Play Nice"]
var moveSet = moves + moreMoves
moveSet


moveSet[1...3]
moveSet[1..<3]
















