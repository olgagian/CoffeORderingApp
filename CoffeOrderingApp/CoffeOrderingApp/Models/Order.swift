//
//  Order.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 30/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
struct Order:Codable {
    let name:String
    let size: String
    let coffeeName:String
    let total: Double
}
