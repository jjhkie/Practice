//
//  NavigationBarController.swift
//  Practice
//
//  Created by 김진혁 on 2022/12/19.
//

import UIKit

final class NavigationBarController: UIViewController{

   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.delegate = self
        attribute()
        Accessing()
    }
}

extension NavigationBarController{
    
    ///Accessing items on the Stack
    func Accessing(){
        //Stack 구조인 NavigationController에서 제일 상단에 있는 View
        print(self.navigationController?.topViewController)//Optional(<Practice.NavigationBarController>)
        
        //현재 보여지는 ViewController
        print(self.navigationController?.visibleViewController)//Optional(<Practice.NavigationBarController>)
        
        print(self.navigationController?.viewControllers)
        
        print(self.navigationController?.setViewControllers(<#T##viewControllers: [UIViewController]##[UIViewController]#>, animated: <#T##Bool#>))
    }
    
    func attribute(){
        //self.navigationController?.setBackgroundColor()
        self.title = "abc"
        self.navigationController?.navigationBar.backgroundColor = .red
        
        let navLeftItem = UIBarButtonItem(title: "Style",
                                                  style: .plain,
                                                  target: self,
                                                  action: nil)
        navigationItem.leftBarButtonItem = navLeftItem
        
    }
}

extension NavigationBarController: UINavigationControllerDelegate{
    
    //child View Controller가 Stack에 push/pop될 떄 알려준다.
    //NavigationController의 생명주기라고나 할까
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("willShow")
    }
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("didShow")
    }
    
//    //화면 전환 애니메이션 적용
//    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//    }
//
//    func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
//        <#code#>
//    }
//
//    func navigationControllerPreferredInterfaceOrientationForPresentation(_ navigationController: UINavigationController) -> UIInterfaceOrientation {
//        <#code#>
//    }
//
//    func navigationControllerSupportedInterfaceOrientations(_ navigationController: UINavigationController) -> UIInterfaceOrientationMask {
//        <#code#>
//    }
}
