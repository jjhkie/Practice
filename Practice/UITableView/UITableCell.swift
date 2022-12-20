//
//  UITableCell.swift
//  Practice
//
//  Created by 김진혁 on 2022/12/20.
//

import UIKit


final class TableCell: UITableViewCell{
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        attribute()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension TableCell{
    private func attribute(){

        
    }
    
    func setContent(_ index: IndexPath){
        ///tableView안에 있는 textLabel, detailTextLabel, imageView를 사용하기 위해서
        ///defaultContentConfig를 사용한다.
        var content = defaultContentConfiguration()
        
        content.text = "\(index)"
        
        contentConfiguration = content
    }
    
    func setBackground(){
        
        ///cell의 background를 담당한다.
        ///
        var backgroundConfig = UIBackgroundConfiguration.listPlainCell()
        backgroundConfig.backgroundColor = .lightGray
        backgroundConfig.cornerRadius = 10
        backgroundConfig.backgroundInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        backgroundConfig.strokeColor = .systemPink
        backgroundConfig.strokeWidth = 5
        backgroundConfiguration = backgroundConfig
    }
}
