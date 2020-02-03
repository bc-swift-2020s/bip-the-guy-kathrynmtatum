//
//  ViewController.swift
//  Bip-The-Guy
//
//  Created by Kathryn Tatum on 2/3/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
//FUNCTIONS
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue = 60
        
        //shrink imageToPunch by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x
            + 60, y: self.imageToPunch.bounds.origin.y + 60, width: self.imageToPunch.bounds.size.width - 60, height: self.imageToPunch.bounds.size.height - 60)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }
    
    @IBAction func imageTapped(_ sender: Any) {
        animateImage()
    }
    
//ACTIONS
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    
    
}

