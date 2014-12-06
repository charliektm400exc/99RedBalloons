import Foundation
import UIkit


struct Balloon {
    var number: Int = 0
    var Image = UIImage(named: "")



//func incrementBalloons() ->Int {
//    
//    var numberOfBalloons = 1
//    
//    do { numberOfBalloons = numberOfBalloons + 1
//        
//        println(numberOfBalloons)
//        
//        return numberOfBalloons
//    } while numberOfBalloons <= 99
//}


func assignBalloonImage() ->UIImage {
    let randomNumber = Int(arc4random_uniform(UInt32(3)))
    var balloonImage: UIImage = UIImage(named: "")!
    
    switch randomNumber {
    case 1: balloonImage = UIImage(named: "RedBalloon1.jpg")!
    case 2: balloonImage = UIImage(named: "RedBalloon2.jpg")!
    case 3: balloonImage = UIImage(named: "RedBalloon3.jpg")!
    case 4: balloonImage = UIImage(named: "RedBalloon4.jpg")!
        
    default:
        println("Something has gone wrong in assigning images")    }
    
    return balloonImage
}

}