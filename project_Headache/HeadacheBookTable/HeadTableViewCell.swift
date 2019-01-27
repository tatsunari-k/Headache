import UIKit
import RealmSwift


//作成した頭痛のイメージ情報をもとに表示
class HeadTableViewCell: UIViewController {

    let realm = try! Realm()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*
    //initは、シミュレータや実機など実際にiOS上のアプリで実行する時の処理
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    //initは、シミュレータや実機など実際にiOS上のアプリで実行する時の処理
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }
    //prepareForInterfaceBuilderは、Storyboardで表示する時にMac上で実行する処理
    override func prepareForInterfaceBuilder() {
        loadFromNib()
    }
    
    ////実際にxibファイルを読み込む関数
    private func loadFromNib() {
        let IntroductionViewNib = UINib(nibName: "HeadTableViewCell", bundle: Bundle(for: IntroductionView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
        IntroductionViewNib.frame = self.bounds //枠を設定？
        addSubview(IntroductionViewNib) //呼び出しviewに貼り付ける
    } */

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
