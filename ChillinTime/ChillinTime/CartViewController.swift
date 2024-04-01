//
//  CartViewController.swift
//  ChillinTime
//
//  Created by 민웅킴 on 4/1/24.
//

import UIKit

class CartViewController: UIViewController, CartTableViewCellDlegate {

    @IBOutlet weak var cartTableView: UITableView!
    
    @IBOutlet weak var orderCountLabel: UILabel!
    @IBOutlet weak var orderNumLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var totalNumLabel: UILabel!
    @IBOutlet weak var dcCountLabel: UILabel!
    
//    private let cartManager = CartManager()
//    private var itemsData: [CartData] = []
//    private var orderItems: [] = []
    
    
    
    var data : [CartData] = [
        CartData(cartNum: 0, cartName: "아메리카노"),
        CartData(cartNum: 0, cartName: "아메리카노"),
        CartData(cartNum: 0, cartName: "아메리카노"),
        CartData(cartNum: 0, cartName: "아메리카노"),
        CartData(cartNum: 0, cartName: "아메리카노"),
        CartData(cartNum: 0, cartName: "아메리카노")
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cartTableView.dataSource = self
    }

}

extension CartViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CartTableViewCell.reuseIdentifier, for: indexPath) as? CartTableViewCell
        
        let cafeData = data[indexPath.row]
        
        cell?.selectedLabel.text = cafeData.cartName
        cell?.countLabel.text = String(cafeData.cartNum)
        
        cell?.delegate = self
        
        return cell ?? UITableViewCell()
    }
}


extension CartViewController: UITableViewDelegate {
    
}
