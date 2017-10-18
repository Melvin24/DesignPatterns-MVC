//
//  RandomNumberModel.swift
//  MVCDesignPattern
//
//  Created by John, Melvin (Associate Software Developer) on 18/10/2017.
//  Copyright © 2017 John, Melvin (Associate Software Developer). All rights reserved.
//

import Foundation

class RandomNumberModel {
    
    func fetchRandomNumber() -> Int {
        return Int(arc4random_uniform(1000))
    }
    
}
