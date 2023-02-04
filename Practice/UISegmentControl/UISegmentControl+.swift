//
//  UISegmentControl+.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/04.
//

import UIKit


extension UISegmentedControl{
    func managing(){
        
        //지정한 세그먼트의 image를 변경
        setImage(UIImage(systemName: "bell"), forSegmentAt: 0)
        
        //지정한 세그먼트의 image를 반환
        setImage(imageForSegment(at: 0), forSegmentAt: 1)
        
        //지정한 세그먼트의 title을 변경
        setTitle("직접 설정", forSegmentAt: 0)
        

        //지정한 세그먼트 제거
        ///segmentedControl.removeSegment(at: 0, animated: true)
    }
    
    
    func custom(){
        
        //선택된 세그먼트의 배경색
        selectedSegmentTintColor = .red
        
        // ( ? )
//        setBackgroundImage(UIImage(systemName: "heart"), for: <#T##UIControl.State#>, barMetrics: .compact)
        
    }
}
