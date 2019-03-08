
import UIKit

public class MyOwnExt {
    
    
    
    
}

public extension UIView {
    public func setYellowBorder(fBorderWidth: CGFloat) {
        self.layer.borderWidth = fBorderWidth
        self.layer.borderColor = UIColor.yellow.cgColor
    }
}
