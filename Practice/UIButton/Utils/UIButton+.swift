//
//  UIButton+.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/13.
//

import UIKit

extension UIButton.Configuration{
    enum ButtonStyle{
        case tinted
        case gray
        case plain
        case filled
        case bordered
        
        var style: UIButton.Configuration{
            switch self{
                
            case .tinted:
                return UIButton.Configuration.tinted()
            case .gray:
                return UIButton.Configuration.gray()
            case .plain:
                return UIButton.Configuration.plain()
            case .filled:
                return UIButton.Configuration.filled()
            case .bordered:
                return UIButton.Configuration.bordered()
            }
        }
        
        var title: String?{
            switch self{
                
            case .tinted:
                return "Tinted"
            case .gray:
                return "Gray"
            case .plain:
                return " Plain"
            case .filled:
                return "Filled"
            case .bordered:
                return "Bordered"
            }
        }
        
        
    }
    
    static func buttonStyle(style: ButtonStyle) -> UIButton.Configuration{
        var configuration = style.style
        
        
        
//
//        /// TAKE 배경 및 글자색
        //configuration.baseBackgroundColor = .red
        configuration.baseForegroundColor = .red
//
        ///  TAKE Main Title
        //방법 1
        configuration.title = style.title

        //방법 2
        var AttriTitle = AttributedString.init(style.title!)
        AttriTitle.font = .systemFont(ofSize: 30, weight: .bold)
        configuration.attributedTitle = AttriTitle
//
        ///  TAKE SubTitle
        //방법 1
        configuration.subtitle = "subTitle"
        //방법 2
        var AttriSubTitle = AttributedString.init("subTitle")
        AttriSubTitle.font = .systemFont(ofSize: 20, weight: .bold)
        configuration.attributedSubtitle = AttriSubTitle
//
//
//        /// TAKE  Image
        configuration.image = UIImage(systemName: "heart")
        configuration.imagePlacement = .top
//
//
        /// TAKE Button Layout
        configuration.buttonSize = .large
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        
        
        return configuration
    }
}
