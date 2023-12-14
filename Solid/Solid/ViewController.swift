//
//  ViewController.swift
//  Solid
//
//  Created by Darya on 14.12.23.
//

import UIKit
//Solid
//1 Single responsibility
/*1*/class Sum {

   
    let x = 15
    let y = 20
    
    func sum(_ x: Int, _ y : Int) -> Int{
             return x + y
         }
}
/*2*/class Array {
    
    var array = [ "abc", "dwefgefg13", "oiut", "qwertfds", "3fdvsfvv", "qwef gsdjkfnb", "gegbg sdg qwe" ]
    
    var count = 0
    
    func asxd(){
        
        for i in array {
            let res = i.filter{!$0.isWhitespace}
            count += res.count
        }
    }
    
}


//2 Open-Closed

/*1*/protocol Food {
    func ingredients()
}

class Burger : Food {
    func ingredients() {
        print("beef,salad,cucumber")
    }
}

class Salad : Food {
    func ingredients() {
        print("salad,oil")
    }
}

//3 Liskov

/*1*/class Bird {
    func move() {
        print("The bird is flying")
    }
}

class Penguin: Bird {
    override func move() {
        print("The penguin is sliding")
    }
}


let myBird: Bird = Penguin()
myBird.move()



/*2*/protocol Car {
    var color: UIColor { get }
}
class BMW: Car {
    var color: UIColor
    
    init(color: UIColor) {
        self.color = color
    }
}

class Audi: Car {
    var color: UIColor
    
    init(color: UIColor) {
        self.color = color
    }
}

class Humen {
    func drive (with item: Car) {
        print("Car color: ", item.color)
    }
}

let blueBMW = BMW(color: .blue)
let blackAudi = Audi(color: .black)
let bob = Humen()

bob.drive(with: blueBMW)
bob.drive(with: blackAudi)


//4 Interface segregation

/*1*/protocol Work {
    func workHouse()
}

protocol Read {
    func readBook ()
}

class Women : Work {
    func workHouse () {
        // работает
    }
}

/*2*/protocol Works {
    func workHouse()
}

protocol Reads {
    func readBook ()
}


class Men : Works, Reads {
    func workHouse() {
        
    }
    
    func readBook() {
        
    }
    class Child : Reads {
        func readBook() {
            
        }
    }
}

//5 Dependency inversion
/*1*/protocol Dog {
    func breed ()
}

class Poodle {
    let frend : Dog

    init(frend: Dog) {
        self.frend = frend
    }
    func walk() {
        frend.breed()
    }
}

/*2*/protocol Cars {
    func brend ()
}
 
class Lada : Cars {
    func brend() {
        
    }
}

class Nissan {
    let color : Cars

    init(color : Cars) {
        self.color = color
    }
    func colorBrend() {
        color.brend()
    }
}
