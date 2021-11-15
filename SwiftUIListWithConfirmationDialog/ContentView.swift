//
//  ContentView.swift
//  SwiftUIListWithConfirmationDialog
//
//  Created by Richard Witherspoon on 11/15/21.
//

import SwiftUI

struct ContentView: View {
    @State private var confirmationShown = false
    @State private var numbers = Array(0..<20)

    var body: some View {
        NavigationView{
            List{
                ForEach(numbers, id: \.self){ i in
                    NavigationLink("This is row \(i)") {
                        Text("This is row \(i)")
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            confirmationShown.toggle()
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                    .confirmationDialog("Are you sure?",
                                        isPresented: $confirmationShown,
                                        titleVisibility: .visible) {
                        Button("Delete", role: .destructive) {
                            numbers.remove(at: i)
                        }
                        .keyboardShortcut(.defaultAction)
                    } message: {
                        Text("This action cannot be undone")
                    }
                }
            }
            .navigationTitle("Sidebar")
            
            Text("Hello, World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
