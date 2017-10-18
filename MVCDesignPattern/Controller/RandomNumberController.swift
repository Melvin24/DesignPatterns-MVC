//
//  RandomNumberController.swift
//  MVCDesignPattern
//
//  Created by John, Melvin (Associate Software Developer) on 18/10/2017.
//  Copyright © 2017 John, Melvin (Associate Software Developer). All rights reserved.
//

import UIKit

class RandomNumberController: UIViewController {

    var randomNumberView: RandomNumberView!
    
    lazy var model = RandomNumberModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomNumberView = Bundle.main.loadNibNamed("RandomNumberView", owner: nil, options: nil)?.first as! RandomNumberView
        
        randomNumberView.onDidSelectRandomButton = fetchRandomNumber
        
        self.randomNumberView = randomNumberView
        
        
        self.view.addSubview(self.randomNumberView)

        self.randomNumberView.translatesAutoresizingMaskIntoConstraints = false
        
        let viewBindings: [String : Any] = [ "randomView": self.randomNumberView ]
        
        self.view.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "V:|[randomView]|",
                                           options: NSLayoutFormatOptions(),
                                           metrics: nil,
                                           views: viewBindings)
        )
        
        self.view.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[randomView]|",
                                           options: NSLayoutFormatOptions(),
                                           metrics: nil,
                                           views: viewBindings)
        )
    }

    func fetchRandomNumber() {
        let randomNumber = model.fetchRandomNumber()
        
        randomNumberView.label.text = "\(randomNumber)"
    }
    
}

