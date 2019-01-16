import UIKit

////〈summary〉
////頭痛作成機能で使用するテキストボックスのテンプレート/////
@IBDesignable
class HeadacheMakeTextView: UIView {

    @IBOutlet weak var headMakeNo: UILabel!
    @IBOutlet weak var headMakeText: UILabel!
    
    
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
    
    private func loadFromNib() {
        let HeadacheMakeTextViewNib = UINib(nibName: "HeadacheMakeTextView", bundle: Bundle(for: HeadacheMakeTextView.self)).instantiate(withOwner: self, options: nil)[0] as! UIView
        HeadacheMakeTextViewNib.frame = self.bounds
        addSubview(HeadacheMakeTextViewNib)
    }
    

}
