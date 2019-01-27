import UIKit
import RealmSwift

///////<summary>
///////決めた色、形の頭痛が決めた位置に来ているかを最後に確認するページ。このページで確定してrealmへの保存を実行する

class HeadacheMakeLast: UIViewController {

    @IBOutlet weak var makeFinButtonIB: UIButton!

    var bookData: BookData!
    let realm = try! Realm()
    
    
    @IBAction func makeFinButtonIA(_ sender: Any) {
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    /////////////////////////////////////////////////////////////////////////////
    ////保存処理
    /*
    override func viewWillDisappear(_ animated: Bool) {
        try! realm.write {
            print("DEBUG_PRINT: viewWillDisappear")
            /*
            self.bookData.headacheFX = self.titleTextField.text!
            self.bookData.headacheFY = self.contentsTextView.text
            self.bookData.headacheFZ = self.datePicker.date
            self.bookData.date = self.datePicker.date
            self.bookData.date = self.datePicker.date
            self.bookData.date = self.datePicker.date
            self.bookData.date = self.datePicker.date
            self.bookData.date = self.datePicker.date
            */
            
            self.realm.add(self.bookData, update: true)
        }
        
        super.viewWillDisappear(animated)
    }
 */

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
