//
//  CartManager.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import Foundation

class CartManager:ObservableObject{
    @Published private(set) var products:[Product] = []
    
    @Published private(set) var total:Int = 0
    
    func addTocart(product:Product){
        products.append(product)
        total += product.price
    }
    
    func removefromCarr(product:Product){
        products = products.filter{ $0.id != product.id}
        total -= product.price
    }

}
