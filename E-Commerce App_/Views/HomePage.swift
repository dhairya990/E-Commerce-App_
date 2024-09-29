//
//  HomePage.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top) {
                Color.white.edgesIgnoringSafeArea(.all)
                VStack{
                    AppBar()
                    SearchView()
                    ImageSliderView()
                    HStack{
                        Text("new Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        NavigationLink(destination: {
                            ProductView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("Color"))
                        })
                    }
                    .padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:10){
                            ForEach(productList,id: \.id){product in
                                NavigationLink{
                                    ProductDetailView(product: product)
                                } label:{
                                    ProductCart(product: product)
                                        .foregroundColor(Color("Color"))
                                }
                            }
                            
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 50)
                    }
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
//                    Text("New Delhi,India")
//                        .font(.title2)
//                        .foregroundColor(.gray)
                    Text(locationManager.currentCity)
                                            .font(.title2)
                                            .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)
                        ) {
                        CartButton(numberOfProducts: cartManager.products.count)
                        
                    }
                }
                Text("Find the Most\nLuxurious")
                    .font(.largeTitle .bold())
                
                + Text(" Furniture")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("Color"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}



#Preview {
    HomePage()
        .environmentObject(CartManager())
}
