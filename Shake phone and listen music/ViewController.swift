//
//  ViewController.swift
//  Shake phone and listen music
//
//  Created by Сергей Голенко on 31.12.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    


    @IBOutlet weak var shakeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //configureGradient()
        
    }
    
    
    func configureGradient(){
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.purple.cgColor,UIColor.blue.cgColor]
        gradient.locations = [0,2]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }

    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeLabel.isHidden = true
        print("shake")
    }

}

