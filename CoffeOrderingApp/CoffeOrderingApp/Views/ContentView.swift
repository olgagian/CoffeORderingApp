//
//  ContentView.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 30/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @ObservedObject  private var orderListVM = OrderListViewModel()
    var body: some View {
        NavigationView{
        OrderListView(orders: self.orderListVM.orders)
            .navigationBarTitle("coffee Orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
