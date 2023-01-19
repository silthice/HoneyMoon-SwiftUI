//
//  Constant.swift
//  Honeymoon
//
//  Created by Giap on 19/01/2023.
//

import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: "mp3") {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Couldnt find and play the sound file")
        }
    }
}

let hapticFeedback = UINotificationFeedbackGenerator()
