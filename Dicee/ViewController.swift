//
//  ViewController.swift
//  Dicee
//
//  Created by Mahmoud on 10/15/18.
//  Copyright © 2018 Mahmoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 :Int = 0
    var randomDiceIndex2 :Int = 0
    
    let diceeArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    @IBOutlet weak var diceeImageView1: UIImageView!
    
    
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceeImage()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
       updateDiceeImage()
    }
    
    func updateDiceeImage (){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceeImageView1.image = UIImage (named: diceeArray [randomDiceIndex1])
        diceeImageView2.image = UIImage (named: diceeArray [randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceeImage()
    }
    
    
    
}

