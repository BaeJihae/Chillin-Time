//
//  CartDataManager.swift
//  ChillinTime
//
//  Created by 배지해 on 4/1/24.
//

import Foundation

struct CartDataManager {
    private var cart: [CartData] = []
    
    mutating func addCartData(name: String) {
        if cart.filter{ $0.cartName == name }.count == 0 {
            cart.append(CartData(cartNum: 1, cartName: name))
        }else {
            print("이미 들어있는 메뉴입니다.")
        }
        print(cart)
    }
    
    func getCartData() -> [CartData] {
        return cart
    }
}
