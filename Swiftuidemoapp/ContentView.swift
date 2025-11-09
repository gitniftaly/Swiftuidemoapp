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
    @State private var lastMessageNum = 0
    @State private var lastImageNUm = 0
    
    var body: some View {
        
        VStack {
        
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.17), value: message)
            
            Image(imgName)
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.easeInOut(duration: 0.50), value: imgName)
            //                .frame(width: 200, height: 200)
       
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
                let messages = ["You are Awesome",
                                "You are Great",
                                "Are you Giant",
                                "Be good and get strong. This wonderful news we lave it",
                                "That is fabulos",
                                "This wonderful news we lave it"]
//                message = messages[imgNumber]
//                imgName = "image\(imgNumber)"
//                imgNumber += 1
//                if imgNumber == messages.count {
//                    imgNumber = 0
//
//                }
//                message = messages[Int.random(in: 0...messages.count-1)]
//                imgName = "image\(Int.random(in: 0...9))"
                
                //While LOOP:
                var messageNumber = Int.random(in: 0...messages.count - 1)
                while messageNumber == lastMessageNum {
                    messageNumber = Int.random(in: 0...messages.count - 1)
                }
                message = messages[messageNumber]
                lastMessageNum = messageNumber
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNUm {
                    imageNumber = Int.random(in: 0...9)
                }
                imgName = "image\(imageNumber)"
                lastImageNUm = imageNumber
                
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
