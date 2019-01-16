import UIKit

///////<summary>
///////チュートリアルストーリーボードを管理。ページめくり。pagecontrolに関するコードを記述

class TutorialPageViewController: UIPageViewController, UIPageViewControllerDelegate {

    var pageControl: UIPageControl!
    var closeBtn:UIButton!
    //var TutrialpageArray:[Int] = [] //チュートリアルページを番号で管理
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([getT01()], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
        self.delegate = self
    }

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
    
    ///////
    /////
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
    {
        if (!completed)
        {
            return
        }
        //現在表示しているviewControllerを取得
        let currentViewController = pageViewController.viewControllers!.first!
        var currentPage: Int
        if currentViewController is T01ViewController {
            currentPage = 0
        } else if currentViewController is T02ViewController {
            currentPage = 1
        } else if currentViewController is T03ViewController {
            currentPage = 2
        } else {
            currentPage = 3
        }
        print("DEBUG_PRINT: \(pageControl.currentPage)")
        self.pageControl.currentPage = currentPage
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.setupView()
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    //固定して表示する関数
    //PageControl　tutorial終了ボタン
    func setupView() {
        //PageControlの生成
        pageControl = UIPageControl(frame: CGRect(x:0, y:self.view.frame.height - 100, width:self.view.frame.width, height:50))
        // PageControlするページ数を設定
        pageControl.numberOfPages = 4
        // 現在ページを設定する
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        self.view.addSubview(pageControl)
        
        //tutorial終了ボタン
        closeBtn = UIButton()
        closeBtn.frame = CGRect(x:10,y:10,width:50,height:50)
        closeBtn.setTitle("×", for: .normal)
        closeBtn.addTarget(self,action:#selector(TutorialPageViewController.closeBtnTapped(sender:)),for:.touchUpInside)
        self.view.addSubview(closeBtn)
        print("DEBUG_PRINT: \(pageControl.currentPage)")
    }

    @objc func closeBtnTapped(sender:UIButton){
        print("DEBUG_PRINT: closeBtnTapped")
        //同じstororyboard内であることをここで定義します
        let storyboard: UIStoryboard = self.storyboard!
        //移動先のstoryboardを選択
        let MainTabBarView = storyboard.instantiateViewController(withIdentifier: "MainTabBarView")
        //実際に移動するコードと
        self.present(MainTabBarView, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////ページ移動を設定する拡張クラス
extension TutorialPageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        //現在表示しているVeiwcomtrollerを取得
        if viewController is T04ViewController{
            print("DEBUG_PRINT:Before 4 -> 3")
            return getT03()
        } else if viewController is T03ViewController{
            print("DEBUG_PRINT:Before 3 -> 2")
            return getT02()
        } else if viewController is T02ViewController{
            print("DEBUG_PRINT:Before 2 -> 1")
            return getT01()
        } else {
            print("DEBUG_PRINT:Before 1 -> end of the road")
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController is T01ViewController {
            pageControl.currentPage = 0
            print("DEBUG_PRINT:After 1 -> 2")
            return getT02()
        } else if viewController is T02ViewController{
            pageControl.currentPage = 1
            print("DEBUG_PRINT:After 2 -> 3")
            return getT03()
        } else if viewController is T03ViewController{
            pageControl.currentPage = 2
            print("DEBUG_PRINT:After 3 -> 4")
            return getT04()
        } else {
            pageControl.currentPage = 3
            print("DEBUG_PRINT:After 4 -> end of the road")
            return nil
        }
    }
}
