//
//  E_Commerce_App_App.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

@main
struct E_Commerce_App_App: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CartManager())
        }
    }
}
