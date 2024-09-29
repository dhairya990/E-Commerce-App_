//
//  ProductCart.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct ProductCart: View {
    @EnvironmentObject var cartManager:CartManager
    var product:Product
    var body: some View {
        ZStack{
            Color("secondary")
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    Image(product.image)
                        .resizable()
                        .frame(width:175,height: 160)
                        .cornerRadius(25)
                    Text(product.name)
                        .padding(.vertical,1)
                        .foregroundColor(.black)
                        .bold()
                    Text(product.supplier)
                        .foregroundColor(Color("Color"))
                        .font(.caption)
                        .padding(.vertical,0.5)
                
                        Text("$\(product.price)")
                            .bold()
                            .foregroundColor(.black)
                        
                    
                }
                Button{
                    cartManager.addTocart(product: product)
                } label:{
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("Color"))
                        .frame(width: 35,height: 35)
                        .padding(.trailing,-0.5)
                }
            }
        }
        .frame(width: 185,height: 260)
        .cornerRadius(15)
    }
}

#Preview {
    ProductCart(product: productList[0])
        .environmentObject(CartManager())
}
