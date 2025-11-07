//
//  ContentView.swift
//  Swiftuidemoapp
//
//  Created by Farad Niftaliyev on 11/6/25.
//

import SwiftUI

struct ContentView: View {
    @State var message = "Daldan daldan"
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                .frame(width: 200, height: 200)
                
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            HStack{
                Button("Awesome!") {
                    message = "Very sweet dall!"
                }
                Button("Great!") {
                    message = "This is great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
