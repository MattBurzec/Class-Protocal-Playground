//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol CanMakeCoffee {
    func bewCup()
    func tip()
}



class CoffeeMachine: CanMakeCoffee {
    func bewCup() {
        print("Beep, beep, beep, coffee served")
    }
    
    func tip() {
        print("Beep")
    }
}



class Barista: CanMakeCoffee {
    func bewCup() {
        print("Here is your expensive coffee, yo it's gourmet!")
    }
}

class Person {
    var delegate: CanMakeCoffee? = nil
    
    func drinkCoffee() {
        if let delegate = delegate {
            delegate.bewCup()
            return
        }
        print("Darn theres no coffee")
    }
    
    func tup() {
        print("Thanks")
    }
}

var bobby = Person()
bobby.drinkCoffee()
var joe = Barista()
bobby.delegate = joe
bobby.drinkCoffee()
var ann = Person()
var coffeeMachine= CoffeeMachine()
ann.delegate = CoffeeMachine
ann.drinkCoffee()

