import Foundation
import UIKit

public class Balls: UIView {
    private var colors: [UIColor]
    private var balls: [UIView] = []


public init(colors: [UIColor]) {
    self.colors = colors
    super.init(frame: CGRect(x:0, y:0, width: 400, height: 400))
    backgroundColor = UIColor.gray
    ballsView()
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


private var ballSize: CGSize = CGSize(width: 40, height: 40)

func ballsView() {
    for (index, color) in colors.enumerated() {
        let ball = UIView(frame: CGRect.zero)
        ball.backgroundColor = color
        addSubview(ball)
        balls.append(ball)
        let origin = 40*index + 100
        ball.frame = CGRect(x: origin, y: origin, width: Int(ballSize.width), height: Int((ballSize.height)))
        ball.layer.cornerRadius = ball.bounds.width / 2.0
    }
}
}
