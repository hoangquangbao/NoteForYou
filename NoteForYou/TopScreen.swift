//
//  TopScreen.swift
//  NoteForYou
//
//  Created by Bao Hoang on 12/5/24.
//

import SwiftUI

struct TopScreen: View {
    var image: UIImage
    var title: String
    var detels: String
    
    @Binding var currentView: Int
    @State var isScaleEffect: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image(uiImage: image)
                .resizable()
                .frame(width: 300, height: 300)
                .scaleEffect(isScaleEffect ? 1 : 0)
            
            Spacer()
            VStack(alignment: .leading, spacing: 20, content: {
                Text(title)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .scaleEffect(isScaleEffect ? 1 : 0, anchor: .leading)
                    .animation(.smooth.delay(0.4), value: isScaleEffect)

                Text(detels)
                    .scaleEffect(isScaleEffect ? 1 : 0, anchor: .leading)
                    .animation(.smooth.delay(0.8), value: isScaleEffect)
            })
            
            Spacer()
            Button(action: {
                currentView += 1
            }, label: {
                Text("Continue")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.8))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            })
            .padding(.bottom)
        }
        .padding(.horizontal)
        .onAppear(perform: {
            withAnimation {
                isScaleEffect.toggle()
            }
        })
    }
}

//#Preview {
//    TopScreen()
//}
