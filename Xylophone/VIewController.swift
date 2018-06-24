//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{

    var audioPlayer : AVAudioPlayer!
    var mySound = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(selectedSound: mySound[sender.tag - 1])
    }
    
    func playSound(selectedSound : String) {
        
        let soundUrl = Bundle.main.url(forResource: selectedSound, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch{
            print(error)
        }
        audioPlayer.play()
        
    }

}

