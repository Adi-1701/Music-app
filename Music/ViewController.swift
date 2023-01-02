//
//  ViewController.swift
//  Music
//
//  Created by Prasanna adithan on 02/01/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    @IBAction func button(_ sender: UIButton) {
        playAudio(soundname: (sender.titleLabel?.text)!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            sender.alpha = 1
        }
    }
    
    func playAudio(soundname: String){
        let url = Bundle.main.url(forResource: soundname, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
        
    }

}

