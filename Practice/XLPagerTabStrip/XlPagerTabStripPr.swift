//
//  XlPagerTabStripPr.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/27.
//

import UIKit
import XLPagerTabStrip
import SnapKit
import Then

final class XlPagerTabStripPr: ButtonBarPagerTabStripViewController{
    let testView = UIView().then{
        $0.backgroundColor = .green
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        attribute()
        layout()
        ///status bar를 탭했을 때 top으로 이동하는 제스쳐를 사용할 지 나타내는 속성이라네요
        //buttonBarView.scrollsToTop = false
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        [FirstTab(),SecondTab()]
    }
    
}

extension XlPagerTabStripPr{
    
    private func attribute(){
        view.addSubview(testView)
        containerView.backgroundColor = .red
        
    }
    
    private func layout(){
        testView.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(300)
        }
        buttonBarView.snp.makeConstraints{
            $0.top.equalTo(testView)
            $0.height.equalTo(50)
            $0.leading.trailing.equalToSuperview()
        }
    }
}
