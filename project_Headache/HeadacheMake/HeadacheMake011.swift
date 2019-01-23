import UIKit

///////<summary>
///////頭痛が左側か右側にあるのかを決めるページ

class HeadacheMake011: UIViewController {

    @IBOutlet weak var headMake011View: HeadacheMakeTextView!
    @IBOutlet weak var headachePointR01: UIImageView!
    @IBOutlet weak var headachePointR02: UIImageView!
    @IBOutlet weak var headachePointL01: UIImageView!
    @IBOutlet weak var headachePointL02: UIImageView!
    @IBOutlet weak var baseView011: UIView!
    
    var headMakeNo011 : String! = ""
    var headMakeText011 : String! = ""
    var headacheImg01 : UIImageView! //タップ操作で配置されるimage変数
    //var headacheImg02 : UIImageView! //
    var defaultImg = UIImage(named:"headacheBase01.jpg")
    var headachePos : CGPoint!   //配置場所を配置したheadachePointに対する座標に変換する変数
    var headachePosratio: Float! //配置場所の比率計算用変数
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo011 = "１"
        headMakeText011 = "あなたの頭痛は\nどこにありますか？\n\n右?　左?"
        
        headMake011View.headMakeNo.text = headMakeNo011
        headMake011View.headMakeText.text = headMakeText011
        
        // UIImageViewのインスタンス作成
        headacheImg01 = UIImageView(frame: CGRect(x: -30, y: -30, width: 30, height: 30))
        //headacheImg01 = UIImageView(frame: CGRect.zero)
        // デフォルト画像をheadacheImg01に設定する
        headacheImg01.image = defaultImg
        print("DEBUG_PRINT: defaultImg\(String(describing: defaultImg))")
        
        self.view.addSubview(headacheImg01)
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
            let conversionPointR01 = baseView011.convert(headachePointR01.frame, to: self.view)
            let conversionPointR02 = baseView011.convert(headachePointR02.frame, to: self.view)
            let conversionPointL01 = baseView011.convert(headachePointL01.frame, to: self.view)
            let conversionPointL02 = baseView011.convert(headachePointL02.frame, to: self.view)
            
            //タップしたUIImageView別に条件分岐
            if conversionPointR01.contains(point) {
                // headachePointR01のある場所でタッチされた
                headacheImg01.center = point
                headachePos = point
                print("headachePointR01のある場所でタッチされた")
            }
            else if conversionPointR02.contains(point){
                headacheImg01.center = point
                print("headachePointR02のある場所でタッチされた")
            }
            else if conversionPointL01.contains(point){
                headacheImg01.center = point
                print("headachePointL01のある場所でタッチされた")
            }
            else if conversionPointL02.contains(point){
                headacheImg01.center = point
                 print("headachePointL02のある場所でタッチされた")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
