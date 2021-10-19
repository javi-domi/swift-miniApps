//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//  Javier Dominguez 2021

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")
        sender.alpha = 0.7
        let letter: String = (sender.titleLabel?.text)!
        playSound(letter: letter)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
            print("End")
        }
    }
    
    func playSound(letter: String) {
        let url = Bundle.main.url(forResource: "\(letter)", withExtension: "wav")
                player = try! AVAudioPlayer(contentsOf: url!)
                player.play()
    }
}

