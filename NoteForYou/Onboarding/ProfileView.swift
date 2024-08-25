//
//  ProfileView.swift
//  NoteForYou
//
//  Created by Bao Hoang on 25/8/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        HStack {
            Image(systemName: "rectangle.grid.2x2")
                .padding(5)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 1.0)
                }
            
            Text("TimeBoard")
                .frame(maxWidth: .infinity)
            
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}
