import UIKit

///////<summary>
///////頭痛が前後どの辺にあるのかを決めるページ
class HeadacheMake012: UIViewController {

    var headMakeNo012 : String! = ""
    var headMakeText012 : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headMakeNo012 = "１"
        headMakeText012 = "あ\nど？\n右?　左?"
        
        //headMake012View.headMakeNo.text = headMakeNo012
        //headMake012View.headMakeText.text = headMakeText012
        
        
        print("DEBUG_PRINT: \(headMakeText012)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

}
