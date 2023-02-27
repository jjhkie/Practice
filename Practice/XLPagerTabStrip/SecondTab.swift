//
//  SecondTab.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/27.
//

import UIKit
import XLPagerTabStrip

final class SecondTab:UIViewController,IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        IndicatorInfo(title: "Second")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
