//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Amber Spadafora on 10/8/20.
//  Copyright © 2020 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.blue)
    }
}

extension View {
    func blueTitleStyle() -> some View {
        self.modifier(BlueTitle())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Test String").blueTitleStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
