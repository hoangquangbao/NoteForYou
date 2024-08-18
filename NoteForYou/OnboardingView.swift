//
//  OnboardingView.swift
//  NoteForYou
//
//  Created by Bao Hoang on 18/8/24.
//

import SwiftUI

enum CurrentView: Int {
    case view0 = 0
    case view1 = 1
    case view2 = 2
}

struct OnboardingView: View {
    @State var currentView: Int = 0
    var body: some View {
        ZStack(content: {
            switch currentView {
            case 0:
                TopScreen(image: .note, title: "Sticky Note", detels: "You can choose one of five different stickers in shape color to suit your tasks", currentView: $currentView)
            case 1:
                TopScreen(image: .note01, title: "Dragging Board", detels: "You can drag a memo to any location inside the whiteboard", currentView: $currentView)
            case 2:
                TopScreen(image: .note02, title: "Tracking", detels: "Track the progress of tasks and tasks that have been completed and remain", currentView: $currentView)
            default:
                HomeView()
            }
        })
    }
}

#Preview {
    OnboardingView()
}
