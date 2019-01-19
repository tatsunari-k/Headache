import UIKit

///////<summary>
///////頭痛の色を決めるページ


class HeadacheMake021: UIViewController {

    var headMakeNo021 : String! = ""
    var headMakeText021 : String! = ""

    @IBOutlet weak var headacheImg021: UIImageView!
    @IBOutlet weak var colorEditNib: ColorEdit!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        hueEdit = colorEditNib.hueEditSlider.value
//        saturationEdit = colorEditNib.saturationEditSlider.value
//        brightnessEdit = colorEditNib.brightnessEditSlider.value
//        
//        print("DEBUG_PRINT: HeadacheMake021\(hueEdit)")
        
            // 角丸設定
            self.colorEditNib.layer.cornerRadius = 12
            
            // 背景色
            self.colorEditNib.backgroundColor = UIColor.brown
            
            // 影の設定
            self.colorEditNib.layer.shadowOpacity = 0.5
            self.colorEditNib.layer.shadowRadius = 12
            self.colorEditNib.layer.shadowColor = UIColor.black.cgColor
            self.colorEditNib.layer.shadowOffset = CGSize(width: 5, height: 5)
            
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
