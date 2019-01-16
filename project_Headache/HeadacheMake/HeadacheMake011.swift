import UIKit

///////<summary>
///////頭痛が左側か右側にあるのかを決めるページ

class HeadacheMake011: UIViewController {

    @IBOutlet weak var headMake011View: HeadacheMakeTextView!
    var headMakeNo011 : String! = ""
    var headMakeText011 : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo011 = "１"
        headMakeText011 = "あなたの頭痛は\nどこにありますか？\n右?　左?"
        
        headMake011View.headMakeNo.text = headMakeNo011
        headMake011View.headMakeText.text = headMakeText011
        
        print("DEBUG_PRINT: \(String(describing: headMake011View.headMakeNo.text))")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
