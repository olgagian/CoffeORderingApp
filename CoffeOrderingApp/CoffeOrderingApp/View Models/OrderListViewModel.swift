//e
//  OrderListViewModel.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 30/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        Webservice().getallOrders { orders in
            
            if let orders = orders{
                self.orders = orders.map(OrderViewModel.init)
            }
            }
            
            
            
        }
    
    
}

class OrderViewModel{
    let id = UUID()
    var order:Order
    init(order: Order) {
        self.order = order
    }
    var name:String {
        return self.order.name
    }
    var size:String {
        return self.order.size
    }
    var coffeName: String {
        return self.order.coffeeName
    }
    var total:Double {
        return self.order.total
    }
}
