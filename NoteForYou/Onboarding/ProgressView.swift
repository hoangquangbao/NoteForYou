//
//  ProgressView.swift
//  NoteForYou
//
//  Created by Bao Hoang on 25/8/24.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        HStack {
            Circle()
                .stroke(lineWidth: 3)
                .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/.opacity(0.5))
                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay(alignment: .center) {
                    VStack(spacing: 0) {
                        Text("0")
                            .font(.system(size: 30, weight: .regular, design: .rounded))
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 20, height: 2)
                    }
                }
                .padding(.trailing, 50)
                        
            Rectangle()
                .fill(.gray.opacity(0.5))
                .frame(width: 1, height: 60)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Weekly progerss")
                    .font(.system(size: 15, weight: .medium))
                VStack(alignment: .leading) {
                    HStack(spacing: 5) {
                        Circle()
                            .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/.opacity(0.5))
                            .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Complete task")
                            .font(.system(size: 10, weight: .light))
                    }
                    
                    HStack(spacing: 5) {
                        Circle()
                            .fill(Color.red.opacity(0.5))
                            .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Remaini task")
                            .font(.system(size: 10, weight: .light))
                    }
                }
                .padding(.leading, 8)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ProgressView()
}
