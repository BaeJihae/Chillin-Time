//
//  MenuData.swift
//  ChillinTime
//
//  Created by 배지해 on 4/1/24.
//

import Foundation
import UIKit

struct MenuData{
    var name: String
    var id: Int
    var price: Int
    var category: String
    var image: UIImage?
}
extension MenuData {
    static let menu: [MenuData] = [
        MenuData(name: "아메리카노", id: 1, price: 4500, category: "coffee", image: nil),
        MenuData(name: "카페 라떼", id: 2, price: 5000, category: "coffee", image: nil),
        MenuData(name: "콜드브루", id: 3, price: 6000, category: "coffee", image: nil),
        MenuData(name: "바닐라 라떼", id: 4, price: 5500, category: "coffee", image: nil),
        MenuData(name: "카라멜마끼아또", id: 5, price: 6000, category: "coffee", image: nil),
        MenuData(name: "비엔나 라떼", id: 6, price: 6000, category: "coffee", image: nil)
    ]
}
