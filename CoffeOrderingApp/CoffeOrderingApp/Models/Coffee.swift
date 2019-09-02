//
//  Coffee.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 30/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
struct Coffee {
    let name:String
    let imageURL: String
    let price: Double
    
}
extension Coffee{
    static func all()->[Coffee]{
        return [
            Coffee(name: "Cappucino", imageURL: "cappuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "espresso", price: 2.1),
            Coffee(name: "Regular", imageURL: "regular", price: 1.0)
        ]
    }
    
}
