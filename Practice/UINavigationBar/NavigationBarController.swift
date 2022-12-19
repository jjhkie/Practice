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

// 전처리
#if DEBUG


@available(iOS 13.0, *)

// UIViewControllerRepresentable을 채택
struct ViewControllerRepresentable: UIViewControllerRepresentable {
    // update
    // _ uiViewController: UIViewController로 지정
    func updateUIViewController(_ uiViewController: UIViewController , context: Context) {
        
    }
    // makeui
    func makeUIViewController(context: Context) -> UIViewController {
    // Preview를 보고자 하는 Viewcontroller 이름
    // e.g.)
        return NavigationBarController()
    }
}

struct ViewController_Previews: PreviewProvider {
    
    
    @available(iOS 13.0, *)
    static var previews: some View {
        // UIViewControllerRepresentable에 지정된 이름.
        ViewControllerRepresentable()

// 테스트 해보고자 하는 기기
            .previewDevice("iPhone 14")
    }
}
#endif
