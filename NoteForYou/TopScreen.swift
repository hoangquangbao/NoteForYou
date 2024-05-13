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
                Image("note")
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Spacer()
                VStack(alignment: .leading, content: {
                    Text("Sticky Note")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Text("You can choose one of eighteen different stickers in shape and color to suit your task")
                })
                
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
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    TopScreen()
}
