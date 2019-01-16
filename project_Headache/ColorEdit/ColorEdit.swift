import UIKit

////〈summary〉
////スライドバーで色彩・彩度・明度を調整する/////
@IBDesignable
class ColorEdit: UIView {
    
    @IBOutlet weak var hueEditSlider: UISlider!
    @IBOutlet weak var saturationEditSlider: UISlider!
    @IBOutlet weak var brightnessEditSlider: UISlider!
    
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
    
    private func loadFromNib() {
    let ColorEditNib = UINib(nibName: "ColorEdit", bundle: Bundle(for: HeadacheMakeTextView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
        ColorEditNib.frame = self.bounds
        addSubview(ColorEditNib)
    }
}

    

