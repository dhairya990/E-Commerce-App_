//
//  CartButton.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts:Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .padding(5)
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.black)
                    .frame(width:15,height:15)
                    .background(.green)
                    .cornerRadius(50)
                
            }
        }
    
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
