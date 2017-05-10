//
//  DiceDataController.swift
//  Randomize
//
//  Created by Marius Ilie on 10/05/17.
//  Copyright © 2017 Marius Ilie. All rights reserved.
//

import Foundation

class DiceDataController {
    static func randomNumber() -> Int {
        let rand = Int(arc4random()%6)
        return rand + 1
    }
}
