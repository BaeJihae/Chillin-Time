//
//  totalHomeBackVC.swift
//  ChillinTime
//
//  Created by t2023-m0095 on 4/1/24.
//

import UIKit

class TotalHomeBackVC: UIViewController {
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
//    @IBOutlet weak var orderCountLabel: UILabel!
    @IBOutlet weak var cartNumLabel: UILabel!
    //    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var totalNumLabel: UILabel!
//    @IBOutlet weak var dcCountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label()
        totalNum(totalNumLabel)
        totalNum(cartNumLabel)
//        orderCountLabel.numberOfLines = 1
//        orderCountLabel.adjustsFontSizeToFitWidth = true
//        cartNum.numberOfLines = 1
//        cartNum.adjustsFontSizeToFitWidth = true
//        totalPriceLabel.numberOfLines = 1
//        totalPriceLabel.adjustsFontSizeToFitWidth = true
//        totalNumLabel.numberOfLines = 1
//        totalNumLabel.adjustsFontSizeToFitWidth = true
//        dcCountLabel.numberOfLines = 1
//        dcCountLabel.adjustsFontSizeToFitWidth = true
    }
    
    func totalNum (_ label: UILabel) {
        var cartNum : Int = 3
        var totalPrice : Int = 15000
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        var result1 = numberFormatter.string(from: NSNumber(value:totalPrice))!
    
        cartNumLabel.text = "\(cartNum)개"
        totalNumLabel.text = "\(result1)원"
   
        highlightNumbers(inLabel: totalNumLabel)
        highlightNumbers(inLabel: cartNumLabel)
    }
    
    func highlightNumbers(inLabel label: UILabel) {
        guard let text = label.text else { return }
        let attributedText = NSMutableAttributedString(string: text)
        
        // 문자열 내 숫자부분 색상 및 볼드처리
        for (index, character) in text.enumerated() {
            if character.isNumber || character == ","  {
                let range = NSRange(location: index, length: 1)
                attributedText.addAttribute(.foregroundColor, value: UIColor.red, range: range)
                attributedText.addAttribute(.font, value: UIFont.systemFont(ofSize: 16, weight: .bold), range: range)
            }
        }
        
        label.attributedText = attributedText
    }
    
    func label() {
        highlightNumbers(inLabel: cartNumLabel)
        highlightNumbers(inLabel: totalNumLabel)
    }
    
//    @IBAction func tappedHome(_ sender: UIButton) {
//    }
//    
//    @IBAction func tappedBack(_ sender: UIButton) {
//    }
    
    
}


