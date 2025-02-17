//
//  ViewController.swift
//  Shake phone and listen music
//
//  Created by Сергей Голенко on 31.12.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: - Properties
    var mymp3 = ["Izzamuzzic1","Izzamuzzic2","Izzamuzzic3","Izzamuzzic4","Izzamuzzic5"]
    var player = AVAudioPlayer()
    @IBOutlet weak var shakeLabel: UILabel!
    
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 
    
    //MARK: Functions
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeLabel.isHidden = true
        playMusic()
        print("shake")
    }
    
    
    func playMusic(){
        var mp3 = randomPlayMp3()
        guard let path = Bundle.main.path(forResource: mymp3[mp3], ofType: "mp3") else {return}
                    print(path)
                    let url = URL(fileURLWithPath: path)
                    
                    do {
                        player = try AVAudioPlayer(contentsOf:url)
                        player.play()
                    } catch let error{
                        print("error")
                    }
                }
    
    func randomPlayMp3() -> Int {
        
        let ramdomNumber = Int(arc4random_uniform(UInt32(mymp3.count)))
       
        return ramdomNumber
        
    }
        
    
    
    

}

