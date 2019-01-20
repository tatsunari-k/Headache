import UIKit

class T03ViewController: UIViewController {

    @IBOutlet weak var t03TutorialView: IntroductionView!
    var t03Title : String! = ""
    var t03Text : String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t03Text = "その頭痛はどんな色をしていますか？"
        t03Title = "STEP.2"
        t03TutorialView.introTitle.text = t03Title
        t03TutorialView.introText.text = t03Text

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
