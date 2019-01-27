import UIKit

///////<summary>
///////頭痛の形を決めるページ。

class HeadacheMake031: UIViewController {

    @IBOutlet weak var headMake031View: HeadacheMakeTextView!
    @IBOutlet weak var headacheShapeScroll: UIScrollView!
    @IBOutlet weak var headacheImg031: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    

    @IBAction func backButtonIA(_ sender: Any) {
        
        
    }
    
    @IBAction func nextButtonIA(_ sender: Any) {
    }
    
    //@IBOutlet weak var contentView : UIView!  //contentSize用UIView※contentViewとcontentSizeは同じでなければならない。
    var headMakeNo031 : String! = ""
    var headMakeText031 : String! = ""
    var scrollScreenHeight:CGFloat! // ScrollView　ScrollScreenの高さ
    var scrollScreenWidth:CGFloat!  // ScrollScreenの幅
    let img:[String] = ["headache01","headache02","headache03"]
    var pageNum:Int!                // Totalのページ数
    var imageWidth:CGFloat!
    var imageHeight:CGFloat!
    var screenSize:CGRect!
    var imageCenter:CGPoint!
    
    //前の画面から情報を受け取るためのプロパティ
    var color031 : UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo031 = "3"
        headMakeText031 = "例えるなら\nどんな形をしていますか？"
        
        headMake031View.headMakeNo.text = headMakeNo031
        headMake031View.headMakeText.text = headMakeText031
        
        //UIImageViewのimage画像自体の色を変更するにはUIImageにUIImageViewのtintColor設定が反映されるようにする必要があります
        headacheImg031.image = headacheImg031.image?.withRenderingMode(.alwaysTemplate)
        headacheImg031.tintColor = color031
        
        print("DEBUG_PRINT:headacheImg031.tintColor\(headacheImg031.tintColor)")
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let imageTop : UIImage = UIImage(named:img[0])!     //初期イメージ画像の設定
        pageNum = img.count                                 //ページ数番号を取得
        let num : CGFloat = CGFloat(integerLiteral: pageNum)  //CGFloat型へpageNumを変換。あとでもう少し調べて理解する。
        imageWidth = imageTop.size.width                      //画像の横設定画像の横幅から取得
        imageHeight = imageTop.size.height                    //画像の横設定画像の縦幅から取得
        //UIimageのセンター座標を取得
        //取得したセンター座標とUIScreenの各ページの中心座標を合わせて画像を各ページの中央に配置する。
        
        
        //見える範囲のSize設定
        screenSize = headacheShapeScroll.bounds
        print("DEBUG_PRINT:screenSize\(screenSize)")
        
        //各Scrollページのサイズ
        scrollScreenWidth = headacheShapeScroll.frame.width
        scrollScreenHeight = scrollScreenWidth * imageHeight/imageWidth //見えるスクロール画面の高さを画像サイズの縦横比と合わせる※必要?
        
        let scrollCenter = headacheShapeScroll.center
        let scrollCenterX = scrollCenter.x
        //let CenterX : CGFloat = CGFloat(integerLiteral: Int(scrollCenterX))
        let scrollCenterY = scrollCenter.y
        //let CenterY : CGFloat = CGFloat(integerLiteral: Int(scrollCenterY))
        
        print("DEBUG_PRINT:scrollCenterX\(scrollCenterX)")
        print("DEBUG_PRINT:scrollCenterX\(scrollCenterY)")
        print("DEBUG_PRINT:ScrollCenter\(scrollCenter)")
        print("DEBUG_PRINT:scrollScreenWidth\(scrollScreenWidth)")
        print("DEBUG_PRINT:scrollScreenHeight\(scrollScreenHeight)")
        
        //仮想サイズ01：スクロールビューのコンテンツサイズを指定
        headacheShapeScroll.contentSize = CGSize(width: headacheShapeScroll.frame.size.width * num,height: headacheShapeScroll.frame.size.height)
        
        //ページ番号分、画像イメージインスタンスを作成タグ付することでimageViewをtag管理
        for i in 0 ..< (img.count) {
            // UIImageViewのインスタンス
            let image:UIImage = UIImage(named:img[i])!.withRenderingMode(.alwaysTemplate)  //指定のUIimageを代入してインスタンス　番号を指定
            let imageView = UIImageView(image:image)    //UIimageViewにUIimageを代入したインスタンス
            imageView.frame = CGRect(x: 150 + 300 * i, y: 0,width: 100, height: 100)
            imageView.center = CGPoint(x:scrollCenterX + 300 * CGFloat(i) , y:scrollCenterY )
            //let imageViewPoint:CGPoint = headacheShapeScroll.subviews.center
            
            imageView.tintColor = color031
            
            // UIScrollViewのインスタンスに画像を貼付ける
            self.headacheShapeScroll.addSubview(imageView) //これだと同じ画面に貼り付けてしまう？番号順には追加可能
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

}
