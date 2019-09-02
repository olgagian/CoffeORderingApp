//
//  CoffeeViewModel.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 2/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
class CoffeeListViewModel {
    var coffeeList:[CoffeeViewModel] = [CoffeeViewModel]()
    
}
struct CoffeeViewModel{
    
    var coffee:Coffee
    
    init(coffee:Coffee){
        self.coffee = coffee
    }
    var name:String {
        return self.coffee.name
    }
    var imageURL:String {
        
        return self.coffee.imageURL
    }
    var price:  Double {
        return self.coffee.price
    }


}
