import UIKit

///////<summary>
///////頭痛の形を決めるページ。

class HeadacheMake031: UIViewController {

    @IBOutlet weak var headMake031View: HeadacheMakeTextView!
    @IBOutlet weak var headacheShapeScroll: UIScrollView!
    @IBOutlet weak var contentView : UIView!  //contentSize用UIView※contentViewとcontentSizeは同じでなければならない。
    var headMakeNo031 : String! = ""
    var headMakeText031 : String! = ""
    var scrollScreenHeight:CGFloat! // ScrollView　ScrollScreenの高さ
    var scrollScreenWidth:CGFloat!  // ScrollScreenの幅
    let img:[String] = ["headache01","headache02","headache03"]
    var pageNum:Int!                // Totalのページ数
    var imageWidth:CGFloat!
    var imageHeight:CGFloat!
    var screenSize:CGRect!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headMakeNo031 = "3"
        headMakeText031 = "例えるなら\nどんな形をしていますか？"
        
        headMake031View.headMakeNo.text = headMakeNo031
        headMake031View.headMakeText.text = headMakeText031
        
        //画像の各情報を取得。以後、ページの貼付けやその親Viewの定義に利用
        let imageTop : UIImage = UIImage(named:img[0])!     //初期イメージ画像の設定
        pageNum = img.count                                 //ページ数番号を取得
        let num : CGFloat = CGFloat(integerLiteral: pageNum)  //CGFloat型へpageNumを変換。あとでもう少し調べて理解する。
        imageWidth = imageTop.size.width                      //画像の横設定画像の横幅から取得
        imageHeight = imageTop.size.height                    //画像の横設定画像の縦幅から取得
        
        //見える範囲のSize設定
        screenSize = headacheShapeScroll.bounds
        
        //各Scrollページのサイズ
        scrollScreenWidth = headacheShapeScroll.frame.width
        scrollScreenHeight = scrollScreenWidth * imageHeight/imageWidth //見えるスクロール画面の高さを画像サイズの縦横比と合わせる※必要?
        
        //ページスクロールとするためにページ幅を合わせないといけない。
        //仮想サイズ01：スクロールページのサイズの設定　縦はheadacheShapeScrollと同じ。横はheadacheShapeScrollの×ページ数
        contentView.frame = CGRect(x:contentView.frame.origin.x, y:contentView.frame.origin.y, width:headacheShapeScroll.frame.size.width * num, height: headacheShapeScroll.frame.size.height)
        
        //仮想サイズ02：スクロールビューのコンテンツサイズを指定
        headacheShapeScroll.contentSize = CGSize(width: headacheShapeScroll.frame.size.width * num,height: headacheShapeScroll.frame.size.height)
    
        //ページ番号分、画像イメージインスタンスを作成タグ付することでimageViewをtag管理
        for i in 0 ..< pageNum {
            // UIImageViewのインスタンス
            let image:UIImage = UIImage(named:img[i])!  //指定のUIimageを代入してインスタンス　番号を指定
            let imageView = UIImageView(image:image)    //UIimageViewにUIimageを代入したインスタンス
            
            var rect:CGRect = imageView.frame           //UIimaheViewのframeを取得
            rect.size.height = scrollScreenHeight       //imageViewのframeサイズをスクロール画面にセット
            rect.size.width = scrollScreenWidth         //imageViewのframeサイズをスクロール画面にセット
            imageView.tag = i + 1                       //ページを一枚先に送ってfor文繰り返し
            
            // UIScrollViewのインスタンスに画像を貼付ける
            self.headacheShapeScroll.addSubview(imageView) //これだと同じ画面に貼り付けてしまう？番号順には追加可能
        }
        setupScrollImages()
    }
        
        func setupScrollImages(){
            
            // ダミー画像
            let imageDummy:UIImage = UIImage(named:img[0])!
            var imgView = UIImageView(image:imageDummy)
            var subviews:Array = headacheShapeScroll.subviews //配列でsubviewsを管理
            
            // 描画開始の x,y 位置　これで画面をずらしながら仮想画面を構成
            var px:CGFloat = 0.0
            let py:CGFloat = (screenSize.height - scrollScreenHeight)/2
            
            for i in 0 ..< subviews.count {
                imgView = subviews[i] as! UIImageView
                if (imgView.isKind(of: UIImageView.self) && imgView.tag > 0){
                    
                    var viewFrame:CGRect = imgView.frame
                    viewFrame.origin = CGPoint(x: px, y: py)
                    imgView.frame = viewFrame
                    
                    px += (scrollScreenWidth)
                    
                }
            }
            // UIScrollViewのコンテンツサイズを画像のtotalサイズに合わせる
            //let nWidth:CGFloat = scrollScreenWidth * CGFloat(pageNum)
            //headacheShapeScroll.contentSize = CGSize(width: nWidth, height: scrollScreenHeight)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

}
