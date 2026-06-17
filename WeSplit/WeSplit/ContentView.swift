//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Vu on 6/16/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("What's your name", text: $name)
            Text("Your name is: \(name)")
        }
    }
}

#Preview {
    ContentView()
}
