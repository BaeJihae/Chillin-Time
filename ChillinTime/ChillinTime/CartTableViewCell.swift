//
//  CartTableViewCell.swift
//  ChillinTime
//
//  Created by 민웅킴 on 4/1/24.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var selectedLabel: UILabel!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectedLabel?.numberOfLines = 1
        selectedLabel?.adjustsFontSizeToFitWidth = true
        countLabel?.numberOfLines = 1
        countLabel?.adjustsFontSizeToFitWidth = true
    }
    
    
//    static let reuseIdentifier = "CartTableViewCell"
//    weak var delegate: CartTableViewCellDlegate?
    var index: IndexPath?
    
    
    var title: String { return selectedLabel.text! }
    var orderAmount = 0 {
        didSet {
            countLabel.text = "\(orderAmount)"
        }
    }
    func cartTableViewCell(_ cartTableViewCell: CartTableViewCell, didTapAddButton: UIButton) {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func addButton(_ sender: UIButton) {
//        delegate?.cartTableViewCell(self, didTapAddButton: sender)
        orderAmount += 1
    }
    @IBAction func minusButton(_ sender: UIButton) {
//        delegate?.cartTableViewCell(self, didTapAddButton: sender)
        if orderAmount > 1 {
            orderAmount -= 1
        } else if orderAmount == 1 {
            orderAmount = 1
        } else {
            // delete cell .. (미완)
        }
    }
    
    //action에 대한 클로져 - 뷰컨에 직접 수행
    var deleteButtonAction: (()-> Void)?
    
    @IBAction func deleteButtonAction(_ sender: UIButton) {
//        delegate?.cartTableViewCell(self, didTapAddButton: sender)
        // equal .zero == delete cell (미완)
        deleteButtonAction?()
    }
    
}
