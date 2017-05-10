//
//  DiceImageView.swift
//  Randomize
//
//  Created by Marius Ilie on 10/05/17.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import UIKit

class DiceImageView: UIImageView {
    private var _diceNumber: Int = 0 {
        didSet {
            self.image = UIImage(named: "dice\(_diceNumber)")
        }
    }
    
    var diceNumber: Int {
        get {
            return _diceNumber
        }
    }
    
    func rollDice() {
        _diceNumber = DiceDataController.randomNumber()
    }
}
