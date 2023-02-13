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
        attribute()
    }
}

extension NavigationBarController{
    func attribute(){
        self.navigationController?.setBackgroundColor()
        self.navigationController?.navigationBar.isHidden = false
        self.title = "abc"
        self.navigationController?.navigationBar.backgroundColor = .red
        view.backgroundColor = .blue
        
        let navLeftItem = UIBarButtonItem(title: "Style",
                                                  style: .plain,
                                                  target: self,
                                                  action: nil)
        navigationItem.leftBarButtonItem = navLeftItem
        
    }
}
