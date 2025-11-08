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
    @State private var imgName = ""
    @State private var imgNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(imgName)
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            //                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            //            {
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
                message = (message == message1 ? message2 : message1)
                imgNumber += 1
                if imgNumber > 9 {
                    imgNumber = 0
                    
                }
                imgName = "image\(imgNumber)"
                //                print(imgNumber)
                //                let imgString1 = "hand.thumbsup"
                //                let imgString2 = "sun.max.fill"
                
                //                if message == message1{
                //                    message = message2
                //                    imgName = imgString1
                //                }else {
                //                    message = message1
                //                    imgName = imgString2
                //                }
                
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
