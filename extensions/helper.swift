import UIKit
func generateRandomNumbers (quantity:Int) -> [CGFloat] {
    var randomNumbers = [CGFloat]()
    for _ in 1...quantity{
        randomNumbers.append(CGFloat(arc4random_uniform(255)))
    }
    return randomNumbers
}
