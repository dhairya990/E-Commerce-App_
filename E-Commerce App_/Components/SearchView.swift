//
//  SearchView.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct SearchView: View {
    @State private var search:String = ""
    
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("search for furniture" , text:$search)
                    
                    .padding()
                
            }
            .background(Color("secondary"))
            .cornerRadius(12)
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background((Color("Color")))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
