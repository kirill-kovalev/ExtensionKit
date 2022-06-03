import UIKit

public extension UIView {
    public struct Border {
        var width: CGFloat
        var color: UIColor
    }
    
    var border: Border {
        get {
            .init(width: layer.borderWidth,
                  color: .init(cgColor: layer.borderColor ?? .init(gray: 0, alpha: 0)))
        }
        
        set {
            layer.borderColor = newValue.color.cgColor
            layer.borderWidth = newValue.width
        }
        
    }
}