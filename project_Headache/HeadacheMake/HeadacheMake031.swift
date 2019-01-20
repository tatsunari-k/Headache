import UIKit

///////<summary>
///////頭痛の形を決めるページ。

class HeadacheMake031: UIViewController {

    @IBOutlet weak var headMake031View: HeadacheMakeTextView!
    var headMakeNo031 : String! = ""
    var headMakeText031 : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo031 = "3"
        headMakeText031 = "例えるなら\nどんな形をしていますか？"
        
        headMake031View.headMakeNo.text = headMakeNo031
        headMake031View.headMakeText.text = headMakeText031

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

}
