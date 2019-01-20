import UIKit

///////<summary>
///////最初の画面。初回起動以外は基本的にこのページにからスタート。その日にすでに頭痛を作成している場合は同じこのViewの表示内容を変更する

class HeadacheMake001: UIViewController {
    
    
    var headMakeNo001 : String! = ""
    var headMakeText001 : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo001 = "１"
        headMakeText001 = "リラックスして繰り返し\n頭痛をイメージしてみてください"
        
        //headMake001View.headMakeNo.text = headMakeNo001
        //headMake001View.headMakeText.text = headMakeText001
        
        print("DEBUG_PRINT: \(headMakeText001)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

