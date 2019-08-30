//
//  OrderListView.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 30/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    let orders: [OrderViewModel]
    init(orders:[OrderViewModel]){
        self.orders = orders
    }
    var body: some View {
        List{
            ForEach(self.orders, id:\.id){ order in
                HStack {
                    Image(order.coffeName)
                }
                
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "Mary", size: "Medium", coffeeName: "Regular", total: 3.0))])
    }
}
