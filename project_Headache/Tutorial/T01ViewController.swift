import UIKit

class T01ViewController: UIViewController {
    
    @IBOutlet weak var t01TutorialView: IntroductionView!
    var t01Title : String! = ""
    var t01Text : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t01Title = "チュートリアル"
        //t01Text = "あなたの頭痛の正体は？\n\n頭痛のメカニズムは\n未だ解明されていない部分が多く存在します。\n頭痛の大半は自分自身の心理的ストレスによる\n自律神経の乱れが原因だと言われています。\n\n３STEPで\nあなたの頭痛の正体を明らかにすることで\nあなたの頭痛は楽になるはずです。\n\n繰り返し、なるべく正確に想像することで\nより効果を実感できるでしょう。\n\nではでは、頭痛で辛いですか？\nまずはリラックスして\n取り組んでみてください。"
        
        
        t01TutorialView.introTitle.text = t01Title
        //t01TutorialView.introText.text = t01Text
        
        print("DEBUG_PRINT: \(String(describing: t01TutorialView.introTitle.text))")
        //print("DEBUG_PRINT: \(String(describing: t01TutorialView.introText.text))")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
