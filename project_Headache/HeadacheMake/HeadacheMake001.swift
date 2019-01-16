import UIKit

///////<summary>
///////最初の画面。初回起動以外は基本的にこのページにからスタート。その日にすでに頭痛を作成している場合は同じこのViewの表示内容を変更する

class HeadacheMake001: UIViewController {
    
    
    var headMakeNo00 : String! = ""
    var headMakeText00 : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo00 = "１"
        headMakeText00 = "あなたの頭痛は\nどこにありますか？\n右?　左?"
        
        print("DEBUG_PRINT: \(headMakeText00)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

