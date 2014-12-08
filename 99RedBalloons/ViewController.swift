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
    
    var currentIndex = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myBalloonsNumber = 0
        
        assignBalloonImage()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        
        let balloon = myBalloons[currentIndex]
        
        howManyBalloonsLabel.text = "\(balloon.number) Balloons"
        background.image = balloon.Image
        
        currentIndex += 1
        
    }


        func assignBalloonImage() {
            for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var randomNumber = Int(arc4random_uniform(UInt32(4)))
  //          var balloonImage: UIImage = UIImage(named: "")!
            var balloon = Balloon()
              
                
            balloon.number = balloonCount
            switch randomNumber {
            case 1: balloon.Image = UIImage(named: "RedBalloon1.jpg")!
            case 2: balloon.Image = UIImage(named: "RedBalloon2.jpg")!
            case 3: balloon.Image = UIImage(named: "RedBalloon3.jpg")!
            case 0: balloon.Image = UIImage(named: "RedBalloon4.jpg")!
                
            default:
                println("Something has gone wrong in assigning images")    }
            
            self.myBalloons.append(balloon)
            }




}

}