import UIKit

///////<summary>
///////頭痛が左側か右側にあるのかを決めるページ

class HeadacheMake011: UIViewController {

    @IBOutlet weak var headMake011View: HeadacheMakeTextView!
    @IBOutlet weak var headachePointR01: UIImageView!
    @IBOutlet weak var headachePointR02: UIImageView!
    @IBOutlet weak var headachePointL01: UIImageView!
    @IBOutlet weak var headachePointL02: UIImageView!

    var headMakeNo011 : String! = ""
    var headMakeText011 : String! = ""
    var headacheImg01 : UIImageView! //タップ操作で配置されるimage変数
    var headacheImg02 : UIImageView! //
    var defaultImg : UIImage = UIImage(named:"headacheBase01.jpg")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo011 = "１"
        headMakeText011 = "あなたの頭痛は\nどこにありますか？\n\n右?　左?"
        
        headMake011View.headMakeNo.text = headMakeNo011
        headMake011View.headMakeText.text = headMakeText011
        
        print("DEBUG_PRINT: \(String(describing: headMake011View.headMakeNo.text))")
        
        // デフォルト画像をheadacheImg01に設定する
        headacheImg01.image = defaultImg
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
