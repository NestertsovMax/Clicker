//
//  VehicleExt.swift
//  Extensions
//
//  Created by M1 on 27.06.2022.
//

import Foundation



protocol Vehicle {
    var speed: Int { get }
    var capacity: Int { get }
    var priceForOneWay: Int { get }
    
    func timePriceShipping(way: Int)
}

extension Vehicle {
    var priceForOneWay: Int { 10 }
    
    func timePriceShipping(way: Int) {
        let sumPrice = speed + capacity + (priceForOneWay * way)
        print(sumPrice)
    }
}

class Plane: Vehicle {
    
    var speed: Int = 700
    
    var capacity: Int = 20
    
    var priceForOneWay: Int = 50
    
}

class Ship: Vehicle {
    
    var speed: Int = 70
    
    var capacity: Int = 200
    
    var priceForOneWay: Int = 5
    
}

class Helicopter: Vehicle {
    
    var speed: Int = 500
    
    var capacity: Int = 10
    
    var priceForOneWay: Int = 50
    
}

class Car: Vehicle {
    
    var speed: Int = 150
    
    var capacity: Int = 5
}



