//
//  CartViewController.swift
//  ChillinTime
//
//  Created by 민웅킴 on 4/1/24.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var cartTableView: UITableView!
    
    @IBOutlet weak var orderCountLabel: UILabel!
    @IBOutlet weak var orderNumLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var totalNumLabel: UILabel!
    @IBOutlet weak var dcCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cartTableView.dataSource = self
        cartTableView.delegate = self
        
        orderCountLabel.text = "주문할 메뉴"
        orderNumLabel.text = ""
        totalPriceLabel.text = "총 금액"
        totalNumLabel.text = ""
        dcCountLabel.text = ""
        
        orderCountLabel.numberOfLines = 1
        orderCountLabel.adjustsFontSizeToFitWidth = true
        orderNumLabel.numberOfLines = 1
        orderNumLabel.adjustsFontSizeToFitWidth = true
        totalPriceLabel.numberOfLines = 1
        totalPriceLabel.adjustsFontSizeToFitWidth = true
        totalNumLabel.numberOfLines = 1
        totalNumLabel.adjustsFontSizeToFitWidth = true
        dcCountLabel.numberOfLines = 1
        dcCountLabel.adjustsFontSizeToFitWidth = true
    }
    
    
    
    //    private let cartManager = CartManager()
    //    private var itemsData: [CartData] = []
    //    private var orderItems: [] = []
    /*
     //연습용 메뉴데이터
     var menuData : [MenuData] = [
     MenuData(name: "아메리카노", id: 1, price: 4500, category: "커피"),
     MenuData(name: "카페 라떼", id: 2, price: 5000, category: "커피"),
     MenuData(name: "콜드브루", id: 3, price: 6000, category: "커피"),
     MenuData(name: "바닐라 라떼", id: 4, price: 5500, category: "커피"),
     MenuData(name: "카라멜 마끼아또", id: 5, price: 5500, category: "커피"),
     MenuData(name: "비엔나 커피", id: 6, price: 6000, category: "커피"),
     
     ]*/
    
    
    /*
     //연습용 카페데이터
     //    아메리카노, 카페 라떼, 콜드브루, 바닐라 라떼, 카라멜 마끼아또, 비엔나 커피
     var cartData : [CartData] = [
     CartData(cartNum: 1, cartName: "아메리카노"),
     CartData(cartNum: 1, cartName: "카페 라떼"),
     CartData(cartNum: 1, cartName: "콜드브루"),
     CartData(cartNum: 1, cartName: "콜드브루"),
     CartData(cartNum: 1, cartName: "콜드브루"),
     CartData(cartNum: 1, cartName: "바닐라 라떼"),
     CartData(cartNum: 1, cartName: "카라멜 마끼아또"),
     CartData(cartNum: 1, cartName: "카라멜 마끼아또"),
     CartData(cartNum: 1, cartName: "카라멜 마끼아또"),
     CartData(cartNum: 1, cartName: "비엔나 커피")
     
     ]*/
    
    
    let menuData: [MenuData] = MenuData.menu
    let cartData: [CartData] = []
    
    var orderCount = 0
    var totalPrice = 0
    
    
    
    
    
    
}
//재고관리용 cartManager - 민웅
//func checkOrderAvailability(title: String, orderAmount: Int) -> Bool {
//  guard let item = items.filter({ $0.title == title }).first,
//    item.stockHoldings >= orderAmount + 1
//    else { return false }
//  return true
//}

//재고관리 지해님 코드
//struct CartDataManager {
//    private var cart: [CartData] = []
//
//    mutating func addCartData(name: String) {
//        if cart.filter{ $0.cartName == name }.count == 0 {
//            cart.append(CartData(cartNum: 1, cartName: name))
//        }else {
//            print("이미 들어있는 메뉴입니다.")
//        }
//        print(cart)
//    }
//
//    func getCartData() -> [CartData] {
//        return cart
//    }
//}

extension CartViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as? CartTableViewCell
        
        let cafeData = cartData[indexPath.row]
        
        
        //        print(menuData.filter { $0.name == cafeData.cartName })
        
        cell?.deleteButtonAction = {
            //            self.deleteData(at:indexPath.row)
        }
        cell?.selectedLabel.text = cafeData.cartName
        cell?.countLabel.text = String(cafeData.cartNum ?? 0)
        //        cell?.delegate = self
        return cell ?? UITableViewCell()
    }
}

