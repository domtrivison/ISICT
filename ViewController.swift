//
//  ViewController.swift
//  8Ball
//
//  Created by Dom Trivison on 9/13/19.
//  Copyright © 2019 Dom Trivison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ballIndex : Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shakePress(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        updateBall()
    }
    
    func updateBall()
    {
        ballIndex = Int.random(in: 0 ... 4)
        ballImageView.image = UIImage(named: ballArray[ballIndex])
    }
}

