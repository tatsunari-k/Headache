import UIKit

@IBDesignable
class IntroductionView: UIView {
    
    @IBOutlet weak var introTitle: UILabel!
    @IBOutlet weak var introText: UILabel!
    
    //initは、シミュレータや実機など実際にiOS上のアプリで実行する時の処理
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    //initは、シミュレータや実機など実際にiOS上のアプリで実行する時の処理
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }
    //prepareForInterfaceBuilderは、Storyboardで表示する時にMac上で実行する処理
    override func prepareForInterfaceBuilder() {
        loadFromNib()
    }
    
////実際にxibファイルを読み込む関数
    private func loadFromNib() {
        let IntroductionViewNib = UINib(nibName: "IntroductionView", bundle: Bundle(for: IntroductionView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
        IntroductionViewNib.frame = self.bounds //枠を設定？
        addSubview(IntroductionViewNib) //呼び出しviewに貼り付ける
    }
    
    
    
////UIViewインスペクタ状に背景をグラデーション設定できる項目を追加する
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
////実際にグラデーション処理を行う関数
    private func setGradation() {
        gradientLayer?.removeFromSuperlayer()
        gradientLayer = CAGradientLayer()
        gradientLayer!.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer!.frame.size = frame.size
        layer.addSublayer(gradientLayer!)
        layer.masksToBounds = true
    }
    
}

