//
//  UINavigationController+.swift
//  Practice
//
//  Created by 김진혁 on 2022/12/19.
//

import UIKit

extension UINavigationController{
    
    func pushAndPop(){
        //Navigation Stack 에서 맨 위에 있는 viewController
        print(topViewController!)
        
        print(visibleViewController!)
        
        //Stack 에 새로운 ViewController를 업데이트하여 화면 이동
        pushViewController(UISegmentedControlPr(), animated: false)
        
        //Push한 ViewController를 제거한다.
        popViewController(animated: false)
        
        //rootViewController를 제외한 모든 ViewController를 제거한다.
        popToRootViewController(animated: false)
        
        //지정한 ViewController가 나올 때까지 ViewController를 제거한다.
        popToViewController(UISegmentedControlPr(), animated: false)
    }
    
    func setBackgroundColor(){
        navigationBar.backgroundColor = .white
        //navigationBar.push
        
       
        
        //NavigationBar 숨김 여부를 설정
        setNavigationBarHidden(true, animated:  true)
    }
    
}
