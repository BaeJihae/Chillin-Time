//
//  CartTableViewCell.swift
//  ChillinTime
//
//  Created by 민웅킴 on 4/1/24.
//

import UIKit

protocol CartTableViewCellDlegate: AnyObject {
  
}

class CartTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "CartTableViewCell"
    
    @IBOutlet weak var selectedLabel: UILabel!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    
    weak var delegate: CartTableViewCellDlegate?

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
