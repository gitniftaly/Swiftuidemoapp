//
//  ContentView.swift
//  Swiftuidemoapp
//
//  Created by Farad Niftaliyev on 11/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                
            Text("Hello, world!")
                .font(.largeTitle)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
