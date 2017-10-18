//
//  RandomNumberView.swift
//  MVCDesignPattern
//
//  Created by John, Melvin (Associate Software Developer) on 18/10/2017.
//  Copyright © 2017 John, Melvin (Associate Software Developer). All rights reserved.
//

import UIKit

class RandomNumberView: UIView {
    
    @IBOutlet weak var label: UILabel!
        
    var onDidSelectRandomButton: (() -> Void)?

    @IBAction func didSelectRandomButton(_ sender: Any) {
        
        onDidSelectRandomButton?()
        
    }
}

