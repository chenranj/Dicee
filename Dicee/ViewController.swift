//
//  ViewController.swift
//  Dicee
//
//  Created by Chenran Jin on 5/31/19.
//  Copyright © 2019 Chenran Jin. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newDice()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        newDice()
    }
    
    func newDice() {
        diceImageView1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        diceImageView2.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if(motion == .motionShake) {
            newDice()
        }
    }
    
}

