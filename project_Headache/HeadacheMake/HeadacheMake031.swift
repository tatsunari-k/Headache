import UIKit

///////<summary>
///////頭痛の形を決めるページ。

class HeadacheMake031: UIViewController {

    @IBOutlet weak var headMake031View: HeadacheMakeTextView!
    @IBOutlet weak var headacheShapeScroll : UIScrollView!
    var headMakeNo031 : String! = ""
    var headMakeText031 : String! = ""
    var scrollScreenHeight:CGFloat! // ScrollScreenの高さ
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
        
        /*
        screenSize = UIScreen.main.bounds
        // ページスクロールとするためにページ幅を合わせる
        scrollScreenWidth = screenSize.width
        
        let imageTop : UIImage = UIImage(named:img[0])!
        pageNum = img.count
        imageWidth = imageTop.size.width
        imageHeight = imageTop.size.height
        scrollScreenHeight = scrollScreenWidth * imageHeight/imageWidth
        
        for i in 0 ..< pageNum {
            // UIImageViewのインスタンス
            let image:UIImage = UIImage(named:img[i])!
            let imageView = UIImageView(image:image)
            
            var rect:CGRect = imageView.frame
            rect.size.height = scrollScreenHeight
            rect.size.width = scrollScreenWidth
            
            imageView.frame = rect
            imageView.tag = i + 1
            
            // UIScrollViewのインスタンスに画像を貼付ける
            self.headacheShapeScroll.addSubview(imageView)
        }
                setupScrollImages()
        */
        
        // スクロールビューのコンテンツサイズを指定
        headacheShapeScroll.contentSize = CGSize(width: headacheShapeScroll.frame.size.width * 3,height: headacheShapeScroll.frame.size.height)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

}
