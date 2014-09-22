// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var playerName: String = "Player 1"
playerName = "Rajnar"

// playerName = nil // -> Error

let gameTitle: String? = "VasquenBall"
// gameTitle = "bla" // -> Error

var numberOfLives = 99
var livesLabel = "You have \(numberOfLives - 1) lives remaining."

var levelNames = ["Level 1", "Level 2", "Level 3"]
var moreLevelNames: [String] = []
// levelNames = ["Level 1", 2, "Level 3"] // -> Error

// levelNames.count
// levelNames.isEmpty
// levelNames.first
// levelNames.last
// levelNames[0]

moreLevelNames.append("Bla Level")

levelNames += moreLevelNames

let constantLevelNames: [String] = []
// constantLevelNames.append("Final")// -> Error

levelNames.insert("Labyrinyh", atIndex: 3)
levelNames[3] = "New Labyrinyh"
levelNames.removeAtIndex(3)

println("Hello, Swift.")


