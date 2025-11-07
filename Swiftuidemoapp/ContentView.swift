//
//  ContentView.swift
//  Swiftuidemoapp
//
//  Created by Farad Niftaliyev on 11/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var dadan = "Daldan daldan"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                
            Text(dadan)
                .font(.largeTitle)
            Button("Click me!") {
                dadan = "Very sweet dall!"
//               print("You clicked me")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
