//
//  AddCoffeOrderView.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 2/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct AddCoffeOrderView: View {
    @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    
                    Section(header: Text("INFORMATION").font(.body)) {
                        TextField("Enter name:",text:self.$addCoffeeOrderVM.name)
                    }
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        ForEach(addCoffeeOrderVM.coffeeList, id:\.name) {
                            coffee in
                            CoffeeCellView(coffee: coffee)
                        }
                    }
                }
            }
        }
    }
}

struct AddCoffeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeOrderView()
    }
}

struct CoffeeCellView: View {
    let coffee:CoffeeViewModel
    var body: some View {
        HStack{
            Image(coffee.imageURL)
                .resizable()
                .frame(width:100,height: 100)
                .cornerRadius(16)
            Text(coffee.name)
        }
    }
}
