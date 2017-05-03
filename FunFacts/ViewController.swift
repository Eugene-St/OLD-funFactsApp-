//
//  ViewController.swift
//  FunFacts
//
//  Created by Work on 4/24/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
            funFactLabel.text = factProvider.randomFact()
            view.backgroundColor = colorProvider.randonColor()
            //funFactButton.tintColor = colorProvider.randonColor()
    }
}

