//
//  ImageSliderView.swift
//  E-Commerce App_
//
//  Created by Dhairya bhardwaj on 22/09/24.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides : [String] = ["a", "b", "c", "d", "f"]
    
    var body: some View {
        ZStack(alignment: .trailing) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 150)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            
            HStack {
                ForEach(0..<slides.count, id: \.self) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("Color") : Color("secondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding(.trailing, 280)
            .padding(.top, 120)
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    ImageSliderView()
}
