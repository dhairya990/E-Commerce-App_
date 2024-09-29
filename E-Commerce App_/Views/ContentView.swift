//
//  ContentView.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State var currentTab: Tab = .Home
    
    // Hiding the default tab bar
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    
    var body: some View {
        //@StateObject var cartManager=CartManager()
        TabView(selection: $currentTab) {
            HomePage()
            
            Text("Search View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .tag(Tab.Search)
                .frame(maxWidth:.infinity,maxHeight: .infinity)
            Text("Notifications View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .tag(Tab.Notification)
                .frame(maxWidth:.infinity,maxHeight: .infinity)
            Text("Cart View")
                .tag(Tab.Cart)
                .frame(maxWidth:.infinity,maxHeight: .infinity)
            
            Text("Profile View")
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .tag(Tab.Profile)
            
        }
        .overlay(
            HStack(spacing: 0){
                ForEach(Tab.allCases,
                        id: \.rawValue){tab
                    in
                    TabButton (tab: tab)
                }
                        .padding(.vertical)
                        .padding(.bottom,getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                        .background (Color ("secondary"))
            },
            alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)
    }
    
    // Tab Button View
    func TabButton (tab: Tab) ->some View {
        GeometryReader { proxy in
            Button(action:{
                withAnimation(.spring()){
                    currentTab = tab
                }
            }, label: {
                VStack(spacing:0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue)
                        .resizable()
                        .foregroundColor (Color ("Color"))
                        .aspectRatio ( contentMode: . fit)
                        .frame (width: 25, height: 25)
                        .frame (maxWidth: . infinity)
                        .background (
                            ZStack{
                                if currentTab == tab{
                                    MaterialEffect(style: .regular)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    Text(tab.tabname)
                                        .foregroundColor (.primary)
                                        .font(.footnote)
                                        .padding(.top, 50)
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y:currentTab == tab ? -15 : 0 )
                }
            })
        }
        .frame(height: 25)
    }
}

// Enum to define tabs
enum Tab: String, CaseIterable {
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var tabname: String {
        switch self {
        case .Home:
            return "Home"
        case .Search:
            return "Search"
        case .Notification:
            return "Notifications"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}

// Extension to get the safe area insets
extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

// MaterialEffect for visual effects (if needed)
struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}
