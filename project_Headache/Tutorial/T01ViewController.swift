import UIKit

class T01ViewController: UIViewController {
    
    @IBOutlet weak var t01TutorialView: IntroductionView!
    var t01Title : String! = ""
    var t01Text : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t01Text = "あなたの頭痛はどこに潜んでいますか？"
        t01Title = "1"
        t01TutorialView.introTitle.text = t01Title
        t01TutorialView.introText.text = t01Text
        
        print("DEBUG_PRINT: \(String(describing: t01TutorialView.introTitle.text))")
        print("DEBUG_PRINT: \(String(describing: t01TutorialView.introText.text))")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
