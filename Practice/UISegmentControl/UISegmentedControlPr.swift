//
//  UISegmentedControlPr.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/04.
//

import UIKit
import SnapKit

final class UISegmentedControlPr: UIViewController{
    
    private let segmentedControl = UISegmentedControl(items: ["첫 번째","두 번째"])
    
    private let segmentCount = UILabel()
    
    private let selectedNumber = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layout()
        attribute()
    }
}
extension UISegmentedControlPr{
    
    
    
    private func attribute(){

        segmentedControl.managing()
    
        //세그먼트의 수 확인
        segmentCount.text = "\(segmentedControl.numberOfSegments)"
        
        //사용자가 마지막으로 터치한 세그먼트의 index값
        //기본값 -1
        selectedNumber.text = "\(segmentedControl.selectedSegmentIndex)"
        
        //모든 세그먼트 제거
        //segmentedControl.removeAllSegments()
        
        //지정한 세그먼트 활성화( ? )
        segmentedControl.setEnabled(true, forSegmentAt: 1)
        
        //지정된 세그먼트의 콘텐츠(이미지 또는 텍스트)를 그리기 위한 오프셋을 조정합니다.
        segmentedControl.setContentOffset(CGSize(width: 0, height: 0), forSegmentAt: 0)

        //지정한 세그먼트의 width 를 변환
        segmentedControl.setWidth(300, forSegmentAt: 0)
        ///값 반환 widthForSegment
        
        // ( ? )
        //segmentedControl.apportionsSegmentWidthsByContent = false
        
        
        //Custom
        segmentedControl.custom()
    }
    
    private func layout(){
        
        [segmentedControl,segmentCount, selectedNumber].forEach{
            view.addSubview($0)
        }
        
        segmentedControl.snp.makeConstraints{
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(50)
        }
        
        segmentCount.snp.makeConstraints{
            $0.centerX.equalTo(view.safeAreaLayoutGuide)
            $0.centerY.equalTo(view.safeAreaLayoutGuide)
        }
        
        selectedNumber.snp.makeConstraints{
            $0.leading.equalTo(segmentCount.snp.leading)
            $0.top.equalTo(segmentCount.snp.bottom)
        }
        
    }
}
