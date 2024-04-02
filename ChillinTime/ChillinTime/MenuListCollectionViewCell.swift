//
//  MenuListCollectionViewCell.swift
//  ChillinTime
//
//  Created by 배지해 on 4/1/24.
//

import UIKit
import Foundation

class MenuListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuPriceLabel: UILabel!
    @IBOutlet weak var menuNameLabel: UILabel!
    
    override var isHighlighted: Bool {
        didSet {
            guard self.isHighlighted else { return }
            
            contentView.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 0.3)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                self.contentView.backgroundColor = .white
            }
            
            
        }
    }
    
    func setConfigue(_ data: MenuData){
        
        // 이미지가 있다면 설정
        if let image = data.image {
            menuImageView.image = image
        }else {
            menuImageView.image = UIImage(named: "mug")
            menuImageView.tintColor = .black
        }
        
        // 메뉴 가격 설정
        menuPriceLabel.text = String(data.price) + "원"
        
        // 메뉴 이름 설정
        menuNameLabel.text = data.name
        
        // 테두리 설정
        contentView.layer.cornerRadius = 16
        contentView.clipsToBounds = true
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1.0).cgColor
    }
    
}
