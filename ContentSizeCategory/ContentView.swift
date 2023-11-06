//
//  ContentView.swift
//  ContentSizeCategory
//
//  Created by Michelle Grover on 10/27/23.
//

import SwiftUI
// Change the Display Text Size > Larger Text > Enabled
struct ContentView: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundForDynamicTypeSize())
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
    
    private func backgroundForDynamicTypeSize() -> Color {
        let contentSizeCategory = UIContentSizeCategory(dynamicTypeSize)
        return contentSizeCategory >= .accessibilityMedium ? Color.red : Color.blue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
