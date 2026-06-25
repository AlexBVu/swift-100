//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Vu on 6/16/26.
//

import SwiftUI

struct ContentView: View {
    
    let units = ["Meters", "Kilometers", "Feet", "Yards", "Miles"]
    @State private var selectedUnit = "Feet"
    
    @State private var startDistance = 0.0
    
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your starter unit", selection: $selectedUnit) {
                    ForEach(units, id: \.self) {
                        Text($0)
                    }
                }
                Section {
                    TextField("Distance", value: $startDistance, formatter: NumberFormatter())
                }
            }
            .navigationTitle("Unit Conversion")
        }
    }
}

#Preview {
    ContentView()
}
