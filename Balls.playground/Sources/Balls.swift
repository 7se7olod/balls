import Foundation
import UIKit

public class Balls: UIView {
    private var colors: [UIColor]
    private var balls: [UIView] = []


public init(colors: [UIColor]) {
    self.colors = colors
    super.init(frame: CGRect(x:0, y:0, width: 400, height: 400))
    backgroundColor = UIColor.gray
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

