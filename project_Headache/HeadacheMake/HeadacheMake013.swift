import UIKit

///////<summary>
///////前後左右に選択した部位の確認

class HeadacheMake013: UIViewController {

    @IBOutlet weak var headMake013View: HeadacheMakeTextView!
    var headMakeNo013 : String! = ""
    var headMakeText013 : String! = ""
    var headacheImg011 : UIImageView! //タップ操作で配置されるimage変数　背面用
    var headacheImg012 : UIImageView! //タップ操作で配置されるimage変数　側面用
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headMakeNo013 = "１"
        headMakeText013 = "頭痛の場所はこの辺ですか？"
        
        headMake013View.headMakeNo.text = headMakeNo013
        headMake013View.headMakeText.text = headMakeText013
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
}
