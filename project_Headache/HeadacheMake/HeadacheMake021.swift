import UIKit

///////<summary>
///////頭痛の色を決めるページ


class HeadacheMake021: UIViewController {

    @IBOutlet weak var headMake021View: HeadacheMakeTextView!
    @IBOutlet weak var headacheImg021: UIImageView!
    @IBOutlet weak var colorEditNib: ColorEdit!
    var headMakeNo021 : String! = ""//ページ番号
    var headMakeText021 : String! = ""//ページ説明テキスト

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headMakeNo021 = "２"
        headMakeText021 = "あなたの頭痛は\n何色をしていますか？"
        
        headMake021View.headMakeNo.text = headMakeNo021
        headMake021View.headMakeText.text = headMakeText021
        
//        hueEdit = colorEditNib.hueEditSlider.value
//        saturationEdit = colorEditNib.saturationEditSlider.value
//        brightnessEdit = colorEditNib.brightnessEditSlider.value
//        
//        print("DEBUG_PRINT: HeadacheMake021\(hueEdit)")
            self.colorEditNib.colorEditDelegate = self
        
            headacheImg021.image = headacheImg021.image?.withRenderingMode(.alwaysTemplate)
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

extension HeadacheMake021: ColorEditDelegate {
    func changeImageViewColor(color: UIColor) {
        headacheImg021.tintColor = color
    }
}
