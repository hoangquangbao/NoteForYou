//
//  TopScreen.swift
//  NoteForYou
//
//  Created by Bao Hoang on 12/5/24.
//

import SwiftUI

struct TopScreen: View {
    var body: some View {
        ZStack {
            BGGradient()
            VStack {
                Spacer()
                
                ZStack(content: {
                    Image(.note01).resizable()
                        .frame(width: 100, height: 100)
                        .offset(x: -100, y: -250)
                    
                    Image(.note12).resizable()
                        .frame(width: 150, height: 150)
                        .rotationEffect(Angle(degrees: 45))
                        .offset(x: 0, y: -150)
                    
                    Image(.note08).resizable()
                        .frame(width: 70, height: 70)
                        .offset(x: 100, y: -200)
                    
                    Image(.note04).resizable()
                        .frame(width: 70, height: 70)
                        .offset(x: 40, y: -30)
                    
                    Image(.note11).resizable()
                        .frame(width: 70, height: 70)
                        .offset(x: -50, y: -100)
                })
                                       
                VStack(alignment: .leading, spacing: 20){
                    Spacer()
                    Text("Sticky Note")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Text("You can choose one of eighteen different stickers in shape and color to suit your task")
                                      
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Continue")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundStyle(Color.white)
                            .padding(.vertical, 18)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue.opacity(0.8))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    })
                }
                .frame(height: 300)
                .padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    TopScreen()
}
