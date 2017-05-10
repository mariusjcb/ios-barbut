//
//  ViewController.swift
//  Randomize
//
//  Created by Marius Ilie on 10/05/17.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var _lastScore = 0 {
        didSet {
            lastScore?.text = "ULTIMUL SCOR \(_lastScore)"
        }
    }
    
    var score = 0 {
        didSet {
            if oldValue > 0 {
                _lastScore = oldValue
                UserDefaults.standard.set(score, forKey: "savedScore")
            }
            
            newScore?.text = "SCOR NOU: \(score)"
        }
    }
    
    @IBOutlet weak var lastScore: UILabel! {
        didSet {
            if let savedScore = UserDefaults.standard.object(forKey: "savedScore") as? Int {
                _lastScore = savedScore
            }
        }
    }

    @IBOutlet weak var newScore: UILabel!
    
    @IBOutlet weak var dice1: DiceImageView!
    @IBOutlet weak var dice2: DiceImageView!
    
    @IBAction func roll(_ sender: UIButton) {
        dice1.rollDice()
        dice2.rollDice()
        
        score = dice1.diceNumber + dice2.diceNumber
    }
}

