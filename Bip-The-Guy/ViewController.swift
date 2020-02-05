//
//  ViewController.swift
//  Bip-The-Guy
//
//  Created by Kathryn Tatum on 2/3/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var imageToPunch: UIImageView!
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//FUNCTIONS
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        //shrink imageToPunch by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x
            + shrinkValue, y: self.imageToPunch.bounds.origin.y + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print ("ERROR: 🛑 \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("ERROR: 🛑 Could not read data from file sound0")
        }
    }
    
//ACTIONS
    
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
    }


    @IBAction func imageTapped(_ sender: Any) {
        animateImage()
        playSound(soundName: "punchSound", audioPlayer: &audioPlayer)
    }

}
