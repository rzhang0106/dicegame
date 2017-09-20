//
//  ViewController.swift
//  Dice game
//
//  Created by Richard Zhang on 9/19/17.
//  Copyright © 2017 Richard Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var dice1: UIImageView!

    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var roll_btn: UIButton!
    @IBOutlet weak var score: UILabel!
    
    @IBAction func roll_action(_ sender: Any) {
        
        let numberOne = arc4random_uniform(6) + 1
        
        let numberTwo = arc4random_uniform(6) + 1
        
        let sum = numberOne + numberTwo
        score.text = String(format: "%02d", sum)
        
        dice1.image = UIImage(named: "dice-\(numberOne)")
        
        dice2.image = UIImage(named: "dice-\(numberTwo)")
    }
    
}

