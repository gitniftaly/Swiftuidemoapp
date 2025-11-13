//
//  SwiftUIViewSounds.swift
//  Swiftuidemoapp
//
//  Created by Farad Niftaliyev on 11/9/25.
//

import SwiftUI
import AVFAudio

struct SwiftUIViewSounds: View {
    @State private var message = ""
    @State private var imgName = ""
    @State private var imgNumber = 0
    @State private var lastMessageNum = -1
    @State private var lastImageNUm = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastSoundNumber = -1
    var body: some View {
        VStack {
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.17), value: message)
            Spacer()
            
            Image(imgName)
                .resizable()
                .imageScale(.large)
                .foregroundColor(.orange)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.easeInOut(duration: 0.50), value: imgName)
            
            
            Spacer()
            
            Button("Press me!") {
                
                let messages = ["You are Awesome",
                                "You are Great",
                                "Are you Giant",
                                "Be good and get strong. This wonderful news we lave it",
                                "That is fabulos",
                                "This wonderful news we lave it",
                                "Great native creates great stuff",
                                "This video will uncover the 10 most powerful Native American warriors whose stories deserve"]
                
                
                var messageNumber: Int
                 repeat {
                    messageNumber = Int.random(in: 0...messages.count - 1)
                }while messageNumber == lastMessageNum
                message = messages[messageNumber]
                lastMessageNum = messageNumber
                
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...(numberOfImages - 1))
                } while imageNumber == lastImageNUm
                imgName = "image\(imageNumber)"
                lastImageNUm = imageNumber
                
                
                var soundNumber: Int
                
                repeat {
                    soundNumber = Int.random(in: 0...numberOfSounds-1)
                }while soundNumber == lastSoundNumber
                lastSoundNumber = soundNumber
                var soundName = "sound\(soundNumber)"
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😡 Could not read file name \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                }catch{
                    print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}


struct SwiftUIViewSounds_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewSounds()
    }
}
