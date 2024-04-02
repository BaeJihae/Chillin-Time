//
//  CategoryViewController.swift
//  ChillinTime
//
//  Created by A Hyeon on 4/1/24.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var bestBtn: UIButton!
    @IBOutlet weak var coffeeBtn: UIButton!
    @IBOutlet weak var smoothieBtn: UIButton!
    @IBOutlet weak var adeBtn: UIButton!
    @IBOutlet weak var teaBtn: UIButton!
    @IBOutlet weak var desertBtn: UIButton!
    
    var categoryName: String = "베스트" //
    lazy var categories = [bestBtn, coffeeBtn, smoothieBtn, adeBtn, teaBtn, desertBtn]
    
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func reloadBeverages(_ sender: UIButton) {
        changeBackColor(button: sender)
        if let buttonName = sender.titleLabel?.text {
            categoryName = buttonName
            print(categoryName)
        }
                
        
    }
    
    private func changeBackColor(button: UIButton) {
        let maskPath = UIBezierPath(roundedRect: button.bounds,
                                    byRoundingCorners: [.topLeft, .topRight],
                                    cornerRadii: CGSize(width: 10, height: 10))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = button.bounds
        maskLayer.path = maskPath.cgPath
        button.layer.mask = maskLayer
        // 메뉴 탭 바 버튼 둥글게
        
        categories.forEach {
            $0?.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 1)
            // 버튼 배경 칠린 색
            /*UIColor(named: "BasicColor")*/
            $0?.tintColor = .white
            
        }
        button.backgroundColor = .white
        button.tintColor = UIColor(red: 43/255, green: 167/255, blue: 255/255, alpha: 1)
        
    }
}

