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
    var price: Int
    var image: UIImage?
}
extension MenuData {
    
    static let bestMenu: [MenuData] = [
        MenuData(name: "화이트 초콜릿 모카", price: 6000, image: nil),
        MenuData(name: "바닐라 오트 콜드브루", price: 4500, image: nil),
        MenuData(name: "민트 초콜릿 칩 플랫치노", price: 6000, image: nil),
        MenuData(name: "딸기 요거트 플랫치노", price: 6000, image: nil),
        MenuData(name: "버블 크림 밀크티", price: 5500, image: nil),
        MenuData(name: "자몽 네이블오렌지", price: 4500, image: nil),
        MenuData(name: "샤인 히비스커스", price: 5000, image: nil)
    ]
    
    static let coffeeMenu: [MenuData] = [
        MenuData(name: "아메리카노", price: 4500, image: nil),
        MenuData(name: "카페 라떼", price: 5000, image: nil),
        MenuData(name: "바닐라 라떼", price: 5500, image: nil),
        MenuData(name: "연우 카페 라떼", price: 6000, image: nil),
        MenuData(name: "카푸치노", price: 5500, image: nil),
        MenuData(name: "카페 모카", price: 5500, image: nil),
        MenuData(name: "카라멜 마끼아또", price: 6000, image: nil),
        MenuData(name: "비엔나 라떼", price: 6000, image: nil),
        MenuData(name: "화이트 초콜릿 모카", price: 6000, image: nil),
        MenuData(name: "민트 모카", price: 6000, image: nil),
        MenuData(name: "에스프레소", price: 4500, image: nil),
        MenuData(name: "콜드브루 아메리카노", price: 6000, image: nil),
        MenuData(name: "콜드브루 라떼", price: 5500, image: nil),
        MenuData(name: "콜드브루 화이트 비엔나", price: 6000, image: nil),
        MenuData(name: "바닐라 오트 콜드브루", price: 4500, image: nil),
        MenuData(name: "넛츠 크림 라떼", price: 5000, image: nil),
        MenuData(name: "연우 콜드브루", price: 6000, image: nil),
        MenuData(name: "흑당 콜드브루", price: 6000, image: nil)
    ]
    
    static let smoothieMenu: [MenuData] = [
        MenuData(name: "망고 플랫치노", price: 4500, image: nil),
        MenuData(name: "꿀복숭아 플랫치노", price: 5000, image: nil),
        MenuData(name: "초콜릿 칩 플랫치노", price: 5500, image: nil),
        MenuData(name: "민트 초콜릿 칩 플랫치노", price: 6000, image: nil),
        MenuData(name: "플레인 요거트 플랫치노", price: 5500, image: nil),
        MenuData(name: "블루베리 요거트 플랫치노", price: 5500, image: nil),
        MenuData(name: "딸기 요거트 플랫치노", price: 6000, image: nil)
    ]
    
    static let adeMenu: [MenuData] = [
        MenuData(name: "레몬 에이드", price: 4500, image: nil),
        MenuData(name: "자몽 에이드", price: 5000, image: nil),
        MenuData(name: "청포도 에이드", price: 5500, image: nil)
    ]
    
    static let teaMenu: [MenuData] = [
        MenuData(name: "그린 루이보스", price: 4500, image: nil),
        MenuData(name: "샤인 히비스커스", price: 5000, image: nil),
        MenuData(name: "스프링 캐모마일", price: 5500, image: nil),
        MenuData(name: "퓨어 페퍼민트", price: 4500, image: nil),
        MenuData(name: "피치 얼그레이", price: 5000, image: nil),
        MenuData(name: "버블 크림 밀크티", price: 5500, image: nil),
        MenuData(name: "자몽 네이블오렌지", price: 4500, image: nil),
        MenuData(name: "유자피나콜라다", price: 5000, image: nil),
        MenuData(name: "석류애플라임", price: 5500, image: nil),
        MenuData(name: "아이스티", price: 5500, image: nil),
        MenuData(name: "아이스티 레몬", price: 5500, image: nil),
        MenuData(name: "밀크티", price: 5500, image: nil),
        MenuData(name: "유자차", price: 5500, image: nil),
        MenuData(name: "자몽차", price: 5500, image: nil)
    ]
    
    static let desertMenu: [MenuData] = [
        MenuData(name: "크랜베리 월넛 베이글", price: 4500, image: nil),
        MenuData(name: "플레인 베이글", price: 5000, image: nil),
        MenuData(name: "버터 프렌치 토스트", price: 5500, image: nil),
        MenuData(name: "바닐라 크림 폭포 대니쉬", price: 4500, image: nil),
        MenuData(name: "버터 팬케이크", price: 5000, image: nil),
        MenuData(name: "대파베이컨 크림치즈 베이글", price: 5500, image: nil),
        MenuData(name: "생딸기 허니리코타 프렌치 토스트", price: 4500, image: nil),
        MenuData(name: "생딸기 허니리코타 팬케이크", price: 5000, image: nil),
        MenuData(name: "생딸기 허니리코타 와플", price: 5500, image: nil),
        MenuData(name: "펄 슈가 카스테라", price: 5500, image: nil),
        MenuData(name: "밀크 휘낭시에", price: 5500, image: nil),
        MenuData(name: "버터 스카치 버터바", price: 5500, image: nil),
        MenuData(name: "레몬 아이싱 파운드", price: 5500, image: nil),
        MenuData(name: "에그 샐러드빵", price: 5500, image: nil)
        
    ]
}
