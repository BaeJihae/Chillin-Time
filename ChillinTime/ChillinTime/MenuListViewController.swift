//
//  MenuListViewController.swift
//  ChillinTime
//
//  Created by 배지해 on 4/1/24.
//

import UIKit

class MenuListViewController: UIViewController {

    @IBOutlet weak var menuCollectionView: UICollectionView!
    
    let menuData: [MenuData] = MenuData.menu
    var cartDataManager = CartDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }

}

// MARK: - Collection View

extension MenuListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    // collectionView setting
    func setCollectionView() {
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
    }
    
    
    // collectionView cell 개수
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
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

    
    // collectionView 선택시 cart에 추가
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        cartDataManager.addCartData(name: menuData[indexPath.row].name)
    }
    
    
    // collectionView의 view 사이즈 설정
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 170)
    }
    
    
    // collectionView의 행 간격 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 17
    }
}
