//
//  NavigationBarController.swift
//  Practice
//
//  Created by 김진혁 on 2022/12/19.
//

import UIKit
import SwiftUI

final class NavigationBarController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        attribute()
    }
}

extension NavigationBarController{
    func attribute(){
        navigationController?.setBackgroundColor()
        navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.topItem?.title = "title"
        let writeButton = self.navigationItem.makeSFSymbolButton(self,
                                                                     action: Selector("pushToWrite"),
                                                                     symbolName: "highlighter")
            let scanQRButton = self.navigationItem.makeSFSymbolButton(self,
                                                                      action: Selector("pushToScanQR"),
                                                                      symbolName: "viewfinder")
            let notificationButton = self.navigationItem.makeSFSymbolButton(self,
                                                                            action: Selector("pushToNotification"),
                                                                            symbolName: "bell")
                        
            self.navigationItem.rightBarButtonItems = [notificationButton, scanQRButton, writeButton]

    }
}
