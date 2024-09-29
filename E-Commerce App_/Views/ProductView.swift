//
//  ProductView.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct ProductView: View {
    
    @EnvironmentObject var cartManager: CartManager
    var column = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    
        var body: some View{
            NavigationView{
                ScrollView{
                    LazyVGrid(columns:column, spacing:20){
                        ForEach(productList,id: \.id){product in
                            ProductCart(product:product)
                        }
                    }
                    .padding()
                }
                .navigationTitle(Text("All Furniture"))
            }
        }
    }
    
#Preview {
    ProductView()
        .environmentObject(CartManager())
}
