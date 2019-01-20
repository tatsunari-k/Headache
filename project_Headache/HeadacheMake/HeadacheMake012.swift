import UIKit

///////<summary>
///////頭痛が前後どの辺にあるのかを決めるページ
class HeadacheMake012: UIViewController {

    @IBOutlet weak var headMake012View: HeadacheMakeTextView!
    var headMakeNo012 : String! = ""
    var headMakeText012 : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headMakeNo012 = "１"
        headMakeText012 = "頭痛の場所はどこですか？\n\n前？　後ろ？"
        
        headMake012View.headMakeNo.text = headMakeNo012
        headMake012View.headMakeText.text = headMakeText012
        
        
        print("DEBUG_PRINT: \(headMakeText012)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

}
