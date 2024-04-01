//
//  CartTableViewCell.swift
//  ChillinTime
//
//  Created by 민웅킴 on 4/1/24.
//

import UIKit

protocol CartTableViewCellDlegate: class {
    func cartTableViewCell(_ cartTableViewCell: CartTableViewCell, didTapAddButton: UIButton)
}

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var selectedLabel: UILabel!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    static let reuseIdentifier = "CartTableViewCell"
    weak var delegate: CartTableViewCellDlegate?
    
    var title: String { return selectedLabel.text! }
    var orderAmount = 0 {
        didSet {
            countLabel.text = "\(orderAmount)"
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func addButton(_ sender: UIButton) {
        delegate?.cartTableViewCell(self, didTapAddButton: sender)
        orderAmount += 1
    }
    @IBAction func minusButton(_ sender: UIButton) {
        delegate?.cartTableViewCell(self, didTapAddButton: sender)
        orderAmount -= 1
    }
    @IBAction func xButton(_ sender: UIButton) {
        delegate?.cartTableViewCell(self, didTapAddButton: sender)
        orderAmount = 0
    }
    
}
