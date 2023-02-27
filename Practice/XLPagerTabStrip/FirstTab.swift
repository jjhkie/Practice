//
//  FirstTab.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/27.
//

import UIKit
import XLPagerTabStrip


final class FirstTab:UIViewController,IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        return IndicatorInfo(title: "First")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
