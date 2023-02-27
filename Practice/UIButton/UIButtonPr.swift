//
//  UIButtonPr.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/13.
//

import UIKit
import SnapKit

final class UIButtonPr:UIViewController{
    
    private let tintedButton = UIButton()
    private let grayButton = UIButton()
    private let plainButton = UIButton()
    private let filledButton = UIButton()
    private let borderedButton = UIButton()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        attribute()
        layout()
    }
}

extension UIButtonPr{
    private func attribute(){
        stackView.axis = .vertical
        stackView.spacing = 20
        tintedButton.configuration = .buttonStyle(style: .tinted)
        grayButton.configuration = .buttonStyle(style: .gray)
        plainButton.configuration = .buttonStyle(style: .plain)
        filledButton.configuration = .buttonStyle(style: .filled)
        borderedButton.configuration = .buttonStyle(style: .bordered)
//
        
//        [tintedButton,grayButton,plainButton,filledButton,borderedButton].forEach{
//            $0.backgroundColor = .black
//        }
        
    }
    
    private func layout(){
        [tintedButton,grayButton,plainButton,filledButton,borderedButton].forEach{
            stackView.addArrangedSubview($0)
        }
        view.addSubview(stackView)
        
        
        stackView.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
    }
}
