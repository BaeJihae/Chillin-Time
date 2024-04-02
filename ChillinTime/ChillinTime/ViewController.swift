//
//  ViewController.swift
//  ChillinTime
//
//  Created by 배지해 on 4/1/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var bestBtn: UIButton!
    @IBOutlet weak var coffeeBtn: UIButton!
    @IBOutlet weak var smoothieBtn: UIButton!
    @IBOutlet weak var adeBtn: UIButton!
    @IBOutlet weak var teaBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var stackView: UIStackView!
    
    // 카테고리 이름
    var categoryName: String = "베스트"
    
    // 카테고리 버튼
    lazy var categories = [bestBtn, coffeeBtn, smoothieBtn, adeBtn, teaBtn, dessertBtn]
    
    // 메뉴 데이타 ( 베스트 메뉴판으로 초기화 )
    var menuData: [MenuData] = MenuData.bestMenu
    var cartDataManager = CartDataManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        setBackColor()
    }
    
    
    @IBAction func reloadBeverages(_ sender: UIButton) {
        
        changeBackColor(button: sender)
        
        if let buttonName = sender.titleLabel?.text {
            categoryName = buttonName
            changeMenuData(buttonName)
        }
        
        menuCollectionView.reloadData()
    }
    
    
    func setBackColor() {
        changeBackColor(button: bestBtn)
    }
    
    
    // 버튼 이름에 따른 cartData값 변경 함수
    func changeMenuData(_ buttonName: String) {
        
        switch buttonName {
        case "베스트" :
            menuData = MenuData.bestMenu
        case "커피" :
            menuData = MenuData.coffeeMenu
        case "스무디" :
            menuData = MenuData.smoothieMenu
        case "에이드" :
            menuData = MenuData.adeMenu
        case "티" :
            menuData = MenuData.teaMenu
        case "디저트" :
            menuData = MenuData.dessertMenu
        default:
            menuData = MenuData.bestMenu
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
            $0?.tintColor = .white
            
        }
        button.backgroundColor = .white
        button.tintColor = UIColor(red: 43/255, green: 167/255, blue: 255/255, alpha: 1)
        
    }

}

// MARK: - Collection View

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    // collectionView setting
    func setCollectionView() {
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
    }
    
    
    // collectionView cell 개수
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        print(collectionView)
        return menuData.count
    }
    
    
    // collectionView와 cell 연결 / menuData 전달
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as? MenuListCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setConfigue(menuData[indexPath.row])
        
        return cell
    }

    
    // collectionView 선택시 셀 배경색 변경 / cart에 추가
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? MenuListCollectionViewCell {
            cell.contentView.backgroundColor = UIColor(red: 128/255, green: 202/255, blue: 255/255, alpha: 0.3)
        }
        cartDataManager.addCartData(name: menuData[indexPath.row].name)
    }
    
    // collectionView 선택 해제시 셀 배경색 변경
    func collectionView(_ collectionView: UICollectionView,
                        didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? MenuListCollectionViewCell {
            cell.contentView.backgroundColor = UIColor.white
        }
    }
    
    
    // collectionView의 view 사이즈 설정
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 170, height: 170)
    }
    
    
    // collectionView의 행 간격 설정
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 17
    }
}
