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
    @State private var showModal: Bool = false
    var body: some View {
        NavigationView{
        OrderListView(orders: self.orderListVM.orders)
            .navigationBarTitle("coffee Orders")
            .navigationBarItems(leading: Button(action:reloadOrders){
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(Color.white)
                },trailing: Button(action:showAddCoffeeOrderView){
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                })
            
            
            .sheet(isPresented: $showModal) {
                AddCoffeOrderView(isPresented:self.$showModal)
            }
        
    }
}
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
