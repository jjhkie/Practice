//
//  SdwebImagePr.swift
//  Practice
//
//  Created by 김진혁 on 2023/02/11.
//

import UIKit
import SnapKit
import SDWebImage
import FLAnimatedImage

final class SdwebImagePr: UIViewController{
    
    private let testImageView1 = UIImageView()
    private let testImageView = FLAnimatedImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        attribute()
        layout()
    }
}

extension SdwebImagePr{
    
    private func attribute(){
   
        guard let url = URL(string: "https://d20s70j9gw443i.cloudfront.net/t_NEW_GOODS_THUMB_WEBP/https://imgb.a-bly.com/data/goods/20210819_1629373944844034s.gif") else { return }

        let data = try! Data(contentsOf: url)
        //var imgPopUp = FLAnimatedImage(animatedGIFData: gifData) 
        //self.testImageView.sd_setImage(with: url)
        //testImageView.animatedImage = imgPopUp
        testImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        URLSession.shared.dataTask(with: url){(data, response, error) in
//            let data = try! Data(contentsOf: url)
//            var imgPopUp = FLAnimatedImage(animatedGIFData: data)
//            DispatchQueue.main.async {
//
//                self.testImageView.animatedImage = imgPopUp
//            }
//        }.resume()
       
        
     
        
        //testImageView.sd_setImage(with: url)

        
    }
    
    private func layout(){
        
        view.addSubview(testImageView)
        
        
        testImageView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        
    }
}
