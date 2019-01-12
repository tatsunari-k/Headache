import UIKit

@IBDesignable
class IntroductionView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }
    
    override func prepareForInterfaceBuilder() {
        loadFromNib()
    }
    
    private func loadFromNib() {
        let v = UINib(nibName: "IntroductionView", bundle: Bundle(for: IntroductionView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
        v.frame = self.bounds
        addSubview(v)
    }
    
    var gradientLayer: CAGradientLayer?
    
    @IBInspectable var topColor: UIColor = UIColor.white {
        didSet {
            setGradation()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.black {
        didSet {
            setGradation()
        }
    }
    
    private func setGradation() {
        gradientLayer?.removeFromSuperlayer()
        gradientLayer = CAGradientLayer()
        gradientLayer!.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer!.frame.size = frame.size
        layer.addSublayer(gradientLayer!)
        layer.masksToBounds = true
    }
    
}


