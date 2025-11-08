//
//  ContentView.swift
//  Swiftuidemoapp
//
//  Created by Farad Niftaliyev on 11/6/25.
//

import SwiftUI

struct ContentView: View {
//    @State var message = "Daldan daldan"
    @State private var message = ""
    @State private var imgString = ""
    var body: some View {
        
        VStack {
            Spacer()
            Image(systemName: imgString)
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            //            HStack{
            //                Button("Awesome!") {
            //                    message = "Very sweet dall!"
            //                }
            //                Button("Great!") {
            //                    message = "This is great!"
            //                }
            //            }
            Button("Press me!") {
                let message1 = "You are Awesome"
                let message2 = "You are Great"
                let imgString1 = "hand.thumbsup"
                let imgString2 = "sun.max.fill"
                if message == message1{
                    message = message2
                    imgString = imgString1
                }else {
                    message = message1
                    imgString = imgString2
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
