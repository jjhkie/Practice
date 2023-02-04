//
//  UITableHeader.swift
//  Practice
//
//  Created by 김진혁 on 2022/12/21.
//

import UIKit
import SnapKit


final class UITableHeader: UITableViewHeaderFooterView{
    let label = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UITableHeader{
    func attribute(){
        label.text = "test"
    }
    
    func layout(){
        [label].forEach{
            contentView.addSubview($0)
        }
        
        label.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
