import UIKit

protocol ColorEditDelegate: class {
    func changeImageViewColor(color: UIColor)
}
////〈summary〉////////////////////////////////////////////////////////////////////////
////スライドバーで色彩・彩度・明度を調整する/////
@IBDesignable
class ColorEdit: UIView {
    
    var hueEdit : Float = 0.0
    var saturationEdit : Float = 0.0
    var brightnessEdit : Float = 0.0
    var hsvControl : HSV?
    var headacheMake021 : HeadacheMake021?
    var colorEditDelegate: ColorEditDelegate?
    
    @IBOutlet weak var hueEditSlider: UISlider!
    @IBOutlet weak var saturationEditSlider: UISlider!
    @IBOutlet weak var brightnessEditSlider: UISlider!
    
    @IBAction func hueEditSliderAct(_ sender: Any) {
        hueEdit = hueEditSlider.value
        print("DEBUG_PRINT: \(hueEditSlider.value)")
        print("DEBUG_PRINT: \(hueEdit)")
        headacheMake021 = HeadacheMake021()
        
        //HeadacheMake021何にあるheadacheImg021の値を取得して変換する必要あり。
        //hsvControl = HSV.fromRGB(red: 0, green: 255, blue: 0)
        
        colorEditDelegate?.changeImageViewColor(color: UIColor.hsb(h:Int(hueEditSlider.value), s:Int(saturationEditSlider.value), b:Int(brightnessEditSlider.value), alpha: 1))
        
        //delegate?.changeImageViewColor(color: UIColor.rgb(r:Int(hueEditSlider.value), g:Int(saturationEditSlider.value), b:0, alpha: 1))
        //hsvControl = HSV.fromRGB(red: 0, green: 255, blue: 0)
        //headacheMake021?.headacheImg021.tintColor = UIColor.rgb(r:Int(hueEditSlider.value), g: 0, b: 0, alpha: 0.5)
    
        
    }
    
    @IBAction func saturationEditAct(_ sender: Any) {
        saturationEdit = saturationEditSlider.value
        print("DEBUG_PRINT: \(saturationEditSlider.value)")
        print("DEBUG_PRINT: \(saturationEdit)")
        
        colorEditDelegate?.changeImageViewColor(color: UIColor.hsb(h:Int(hueEditSlider.value), s:Int(saturationEditSlider.value), b:Int(brightnessEditSlider.value), alpha: 1))
        
    }
    
    @IBAction func brightnessEditAct(_ sender: Any) {
        brightnessEdit = brightnessEditSlider.value
        print("DEBUG_PRINT: \(brightnessEditSlider.value)")
        
        colorEditDelegate?.changeImageViewColor(color: UIColor.hsb(h:Int(hueEditSlider.value), s:Int(saturationEditSlider.value), b:Int(brightnessEditSlider.value), alpha: 1))
        
    }
    
    
    
    
    
    
    
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
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


//h//ttps://teratail.com/questions/150676
//hueEditSlider.transform = CGAffineTransform(scaleX: 2, y: 2)//

////////////////////////////////////////////////////////////////////////
////h/ttps://qiita.com/KikurageChan/items/7cd958576d4f939f321f
////h/ttps://qiita.com/ruwatana/items/01a9c43057f71560580f
//sliderのUX向上。タッチで値を変更可能にする。
//func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
// thumbのrectを算出する
//let thumbRect = self.thumbRect(
//    forBounds: bounds,
//    trackRect: trackRect(forBounds: bounds), // バー(track)のrect
//    value: value
//)
// tapした座標
//let tapPoint = touch.location(in: self)
// tapした座標がthumbの矩形内に含まれていれば調節開始する
//return thumbRect.contains(tapPoint)
//}

    

