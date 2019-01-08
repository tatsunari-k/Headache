import UIKit

class TutorialPageViewController: UIPageViewController {

    var pageControl: UIPageControl!
    //let TutrialpageArray:[Int] = [] //チュートリアルページを番号で管理
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getT01()], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
        
        //PageControlの生成
        pageControl = UIPageControl(frame: CGRect(x:0, y:self.view.frame.height - 100, width:self.view.frame.width, height:50))
        //pageControl.backgroundColor = .orange
        
        // PageControlするページ数を設定する.
        pageControl.numberOfPages = 4
        
        // 現在ページを設定する.
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        self.view.addSubview(pageControl)

        
        
    }
    //
    //
    
    func getT01() -> T01ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "T01ViewController") as! T01ViewController
    }
    
    func getT02() -> T02ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "T02ViewController") as! T02ViewController
    }
    
    func getT03() -> T03ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "T03ViewController") as! T03ViewController
    }
    
    func getT04() -> T04ViewController {
        return storyboard!.instantiateViewController(withIdentifier: "T04ViewController") as! T04ViewController
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


/////ページを3から1に変更するメソッド
extension TutorialPageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        //現在表示しているVeiwcomtrollerを取得
        if viewController is T04ViewController{
            print("DEBUG_PRINT: 4 -> 3")
            return getT03()
        } else if viewController is T03ViewController{
            print("DEBUG_PRINT: 3 -> 2")
            return getT02()
        } else if viewController is T02ViewController{
            // 2 -> 1
            print("DEBUG_PRINT: 2 -> 1")
            return getT01()
        } else {
            // 1 -> end of the road
            return nil
        }
    
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController is T01ViewController {
            print("DEBUG_PRINT: 1 -> 2")
            return getT02()
        } else if viewController is T02ViewController{
            print("DEBUG_PRINT: 2 -> 3")
            return getT03()
        } else if viewController is T03ViewController{
            print("DEBUG_PRINT: 3 -> 4")
            return getT04()
        } else {
            print("DEBUG_PRINT: 4 -> end of the road")
            return nil
        }
    }
}
