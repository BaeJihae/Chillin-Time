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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }

}
extension MenuListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // collectionView setting
    func setCollectionView() {
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, 
                        numberOfItemsInSection section: Int) -> Int {
        return menuData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, 
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as? MenuListCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setConfigue(menuData[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 170)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 17
    }
}
