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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("DEBUG_PRINT: seguepreoare021→031")
        // segueから遷移先のHeadacheMake031を取得する
        let headacheMake031:HeadacheMake031 = segue.destination as! HeadacheMake031
        // 遷移先のHeadacheMake031で宣言しているcolor031に頭痛の設定値を代入して渡す
        headacheMake031.color031 = headacheImg021.tintColor
        print("DEBUG_PRINT: headacheImg021.tintColor\(headacheImg021.tintColor)")
        // 遷移先のHeadacheMake031で宣言している○○に座標情報の値を代入して渡す
        //
        
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
