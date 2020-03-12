//
//  AudioService.swift
//  SpeechToText
//
//  Created by SonNV-D1 on 3/11/20.
//  Copyright © 2020 SonNV-D1. All rights reserved.
//

import UIKit
import AVFoundation
import UIKit

class AudioService: NSObject {
    
    static let shared = AudioService()
    private let speechSynthesizer = AVSpeechSynthesizer()
    
    func speak(with text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.pitchMultiplier = 1.0
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        utterance.rate = 0.45
        
        speechSynthesizer.speak(utterance)
    }
    
    func stopAudio() {
        speechSynthesizer.stopSpeaking(at: .immediate)
    }
    
    func isSpeaking() -> Bool {
        return speechSynthesizer.isSpeaking
    }
}


