//
//  Webservice.swift
//  CoffeOrderingApp
//
//  Created by ioannis giannakidis on 30/8/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
class Webservice {
    func getallOrders(completion: @escaping([Order]?)->()) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/order") else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    
                
                completion(nil)
                }
                return
            }
            let orders = try? JSONDecoder().decode([Order].self, from: data)
            DispatchQueue.main.async {
                
            
            completion(orders)
            }
        }.resume()
    }
    
}
