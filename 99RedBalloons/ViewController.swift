//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Charlie Franklin on 20/11/2014.
//  Copyright (c) 2014 Charlie Franklin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var howManyBalloonsLabel: UILabel!
    @IBOutlet weak var background: UIImageView!

    var myBalloons:[Balloon] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myBalloonsNumber = 0
       
        do{
       
        myBalloonsNumber = myBalloonsNumber + 1
      //  myBalloons.
        myBalloons.number = myBalloonsNumber
        myBalloons.balloonImage = myBalloons.assignBalloonImage()
        
            println(myBalloons.numberOfBalloons)
            println(myBalloons.balloonImage)
        
        } while myBalloons.numberOfBalloons <= 99
        
        
        
        
        
        
        
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
    }

}

