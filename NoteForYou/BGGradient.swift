//
//  BGGradient.swift
//  NoteForYou
//
//  Created by Bao Hoang on 12/5/24.
//

import SwiftUI

struct BGGradient: View {
    @State var shape1 = Color.red
    @State var shape2 = Color.orange
    @State var shape3 = Color.yellow
    @State var shape4 = Color.green
    @State var shape5 = Color.brown

    let colors = [Color.red, Color.orange, Color.yellow, Color.green, Color.pink, Color.blue, Color.purple]
    
    var body: some View {
        ZStack {
            Image(systemName: "octagon.fill").resizable()
                .renderingMode(.template)
                .frame(width: 200, height: 200)
                .offset(x: -200, y: -300)
                .foregroundStyle(shape1)
            
            Image(systemName: "triangle.fill").resizable()
                .renderingMode(.template)
                .frame(width: 500, height: 300)
                .offset(x: 200, y: -200)
            .foregroundStyle(shape2)
            
            Image(systemName: "diamond.fill").resizable()
                .renderingMode(.template)
                .frame(width: 200, height: 200)
                .offset(x: 40, y: 0)
                .foregroundStyle(shape3)
            
            Image(systemName: "seal.fill").resizable()
                .renderingMode(.template)
                .frame(width: 300, height: 400)
                .offset(x: 200, y: 150)
                .foregroundStyle(shape4)
            
            Image(systemName: "seal.fill").resizable()
                .renderingMode(.template)
                .frame(width: 200, height: 200)
                .offset(x: -150, y: 200)
                .foregroundStyle(shape5)
        }
        .blur(radius: 100)
        .onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                withAnimation(.linear(duration: 3)) {
                    let shuffledColors = colors.shuffled()
                    shape1 = shuffledColors[0]
                    shape2 = shuffledColors[1]
                    shape3 = shuffledColors[2]
                    shape4 = shuffledColors[3]
                }
            }
        })
    }
}

#Preview {
    BGGradient()
}
