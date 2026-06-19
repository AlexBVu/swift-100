//
//  ContentView.swift
//  WeSplit
//
//  Created by Alex Vu on 6/16/26.
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Alex", "Cole", "Stefan"]
    @State private var selectedStudent = "Alex"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a student")
        }
    }
}

#Preview {
    ContentView()
}
