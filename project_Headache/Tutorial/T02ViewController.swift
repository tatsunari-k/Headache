import UIKit

class T02ViewController: UIViewController {

    
    @IBOutlet weak var t02TutorialView: IntroductionView!
    
    var t02Title : String! = ""
    var t02Text : String! = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t02Text = "あなたの頭痛はどこに潜んでいますか？"
        t02Title = "STEP.1"
        t02TutorialView.introTitle.text = t02Title
        t02TutorialView.introText.text = t02Text
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
