import UIKit

extension UIButton {
    func wiggle () {
        let wiggleAnimation = CABasicAnimation(keyPath: "position")
        wiggleAnimation.autoreverses = true
        wiggleAnimation.duration = 0.05
        wiggleAnimation.repeatCount = 5
        wiggleAnimation.fromValue = CGPoint(x: self.center.x - 4.0 , y: self.center.y )
        wiggleAnimation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnimation,forKey: "position")
    }
    
    func dim () {
        UIView.animate(withDuration: 0.15, animations: {self.alpha = 0.75}) { (finished) in
            UIView.animate(withDuration: 0.15, animations: {
                self.alpha = 1
            })
        }
    }
    
    func colorize () {
        let randomColors = generateRandomNumbers(quantity: 3)
        let randomColor = UIColor(red: randomColors[0]/255, green: randomColors[1]/255, blue: randomColors[2]/255, alpha: 1)
        UIView.animate(withDuration: 0.15) {
            self.backgroundColor = randomColor
        }
    }
}
