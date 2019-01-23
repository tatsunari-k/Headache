import UIKit

///////<summary>
///////頭痛が前後どの辺にあるのかを決めるページ
class HeadacheMake012: UIViewController {

    @IBOutlet weak var headMake012View: HeadacheMakeTextView!
    @IBOutlet weak var headachePointS01: UIImageView!
    @IBOutlet weak var headachePointS02: UIImageView!
    @IBOutlet weak var headachePointS03: UIImageView!
    @IBOutlet weak var headachePointS04: UIImageView!
    @IBOutlet weak var headachePointS05: UIImageView!
    @IBOutlet weak var headachePointS06: UIImageView!
    @IBOutlet weak var headachePointS07: UIImageView!
    @IBOutlet weak var headachePointS08: UIImageView!
    @IBOutlet weak var baseView012: UIView!
    
    var headMakeNo012 : String! = ""
    var headMakeText012 : String! = ""
    var headacheImg012 : UIImageView! //タップ操作で配置されるimage変数
    //var headacheImg0 : UIImageView! //
    var defaultImg = UIImage(named:"headacheBase01.jpg")
    var headachePos :CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headMakeNo012 = "１"
        headMakeText012 = "頭痛の場所はどこですか？\n\n前？　後ろ？"
        
        headMake012View.headMakeNo.text = headMakeNo012
        headMake012View.headMakeText.text = headMakeText012
        print("DEBUG_PRINT: \(headMakeText012)")
        
        // UIImageViewのインスタンス作成
        headacheImg012 = UIImageView(frame: CGRect(x: -30, y: -30, width: 30, height: 30))
        // デフォルト画像をheadacheImg012に設定する
        headacheImg012.image = defaultImg
        self.view.addSubview(headacheImg012)
    }

    //タップ操作を検出
    //頭痛の場所をタップ操作によりプロット
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("DEBUG_PRINT: touchesBegan")
        
        for touch in touches {
            // 座標取得
            let point = touch.location(in: self.view) //親のビューを指定
            print("DEBUG_PRINT:\(point)")
            
            //headachePointR01の座標情報をpoint同様Viewに対しての座標を取得するために、
            //BaseView001に対してのheadachePointR01の座標をviewに対する座標に変換
            let conversionPointS01 = baseView012.convert(headachePointS01.frame, to: self.view)
            let conversionPointS02 = baseView012.convert(headachePointS02.frame, to: self.view)
            let conversionPointS03 = baseView012.convert(headachePointS03.frame, to: self.view)
            let conversionPointS04 = baseView012.convert(headachePointS04.frame, to: self.view)
            let conversionPointS05 = baseView012.convert(headachePointS05.frame, to: self.view)
            let conversionPointS06 = baseView012.convert(headachePointS06.frame, to: self.view)
            let conversionPointS07 = baseView012.convert(headachePointS07.frame, to: self.view)
            let conversionPointS08 = baseView012.convert(headachePointS08.frame, to: self.view)
            
            //タップしたUIImageView別に条件分岐
            if conversionPointS01.contains(point) {
                // headachePointR01のある場所でタッチされた
                headacheImg012.center = point
                print("headachePointS01のある場所でタッチされた")
            }
            else if conversionPointS02.contains(point){
                headacheImg012.center = point
                print("headachePointS02のある場所でタッチされた")
            }
            else if conversionPointS03.contains(point){
                headacheImg012.center = point
                print("headachePointS03のある場所でタッチされた")
            }
            else if conversionPointS04.contains(point){
                headacheImg012.center = point
                print("headachePointS04のある場所でタッチされた")
            }
            else if conversionPointS05.contains(point){
                headacheImg012.center = point
                print("headachePointS05のある場所でタッチされた")
            }
            else if conversionPointS06.contains(point){
                headacheImg012.center = point
                print("headachePointS06のある場所でタッチされた")
            }
            else if conversionPointS07.contains(point){
                headacheImg012.center = point
                print("headachePointS07のある場所でタッチされた")
            }
            else if conversionPointS08.contains(point){
                headacheImg012.center = point
                print("headachePointS08のある場所でタッチされた")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

}
