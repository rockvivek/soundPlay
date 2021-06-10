//
//  ViewController.swift
//  soundPlay
//
//  Created by vivek shrivastwa on 10/06/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    var sound = ""
    
    var secondVC = SecondViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sound1ButtonTapped(_ sender: UIButton) {
        if sender.currentTitle! == "Sound 1" {
            sound = "sound1"
        }
        else{
            sound = "sound2"
        } 
        print(sound)
        guard let url = Bundle.main.url(forResource: sound, withExtension: "wav") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = player else { return }
            
            player.play()
            
            } catch let error {
                print(error.localizedDescription)
            }
    }
    
    
    
    @IBAction func goToNextPage(_ sender: UIButton) {
        present(secondVC, animated: true, completion: nil)
    }
    
}

