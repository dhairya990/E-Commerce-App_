//
//  CartView.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager:CartManager
    
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products,id:\.id){
                    product in
                    CartProductView(product: product)
                }
                HStack{
                    Text("Your Total is ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                PaymentButton(action: {})
                    .padding(.bottom,50)
                    .ignoresSafeArea()
                
            }else{
                
                Text("Your cart is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)

    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
