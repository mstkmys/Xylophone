//
//  ViewController.swift
//  Xylophone
//
//  Created by Miyoshi Masataka on 2018/03/03.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    let soundView: SoundView = {
       
        let soundView = SoundView(frame: UIScreen.main.bounds)
        soundView.backgroundColor = .white
        
        return soundView
        
    }()
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [soundView].forEach{ self.view.addSubview($0) }
        
    }
    
    // MARK: Actions
    
    @objc func noteButtonTapped(_ sender: UIButton) {
        
        playSound(soundFileName: "note\(sender.tag)")
        
    }
    
    private func playSound(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print("Error: \(error)")
        }

        audioPlayer.play()
        
    }

}












