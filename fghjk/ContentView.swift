//
//  ContentView.swift
//  fghjk
//
//  Created by dhanvin_macbook on 23/8/69.
//

import SwiftUI


struct NoteApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var notes: [String] = []
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Image(systemName: "figure.american.football")
                List {
                    ForEach(notes, id: \.self) { note in
                        Text(note)
                    }
                    .onDelete(perform: deleteNotes)
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                
                Button(action: {
                    notes.append("add candidate")
                }) {
                    Label("Add candidate", systemImage: "plus.circle.fill")
                        .font(.title2)
                        .padding()
                }
            }
            .navigationBarTitle("candidate voting list")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: toggleDarkMode) {
                        Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                    }
                }
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
    
    private func deleteNotes(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
    }
    
    private func toggleDarkMode() {
        isDarkMode.toggle()
    }
}
