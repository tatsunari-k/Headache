import UIKit

class T04ViewController: UIViewController {

    @IBOutlet weak var t04TutorialView: IntroductionView!
    var t04Title : String! = ""
    var t04Text : String! = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        t04Text = "例えるならどんな形ですか？"
        t04Title = "STEP.3"
        t04TutorialView.introTitle.text = t04Title
        t04TutorialView.introText.text = t04Text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
