//
//  CategoryFunctionListVC.swift
//  TetViet
//
//  Created by DatTH-GD on 2/26/20.
//  Copyright © 2020 Rikkeisoft. All rights reserved.
//

import UIKit
import AVFoundation

class CategoryFunctionListVC: UIViewController {

    @IBOutlet weak var categoryCollection: UICollectionView!
    
    private let listCategory:[CategoryFunctionType] = CategoryFunctionType.listCategory
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        initCollection()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        speechListMenu()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        AudioService.shared.stopAudio()
    }
}

//MARK: init
extension CategoryFunctionListVC {
    func initCollection() {
        categoryCollection.delegate = self
        categoryCollection.dataSource = self
        categoryCollection.register(UINib(nibName: "CategoryListCell", bundle: nil), forCellWithReuseIdentifier: CategoryListCell.identifier)
    }
    
    func speechListMenu(){
        var textListCategory = "機能リスト"
        for item in listCategory {
            textListCategory.append("。。。\(item.title)")
        }
    }
}

//MARK: Collection Delegate, DataSource
extension CategoryFunctionListVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCategory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryListCell.identifier, for: indexPath) as! CategoryListCell
        let cate = listCategory[indexPath.row]
        cell.fillData(title: cate.title, icon: cate.image )
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = FunctionListVC()
        vc.functionsList = listCategory[indexPath.row].listFunction
        vc.titleNavi = listCategory[indexPath.row].title
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension CategoryFunctionListVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width * 104 / 375
        let height = UIScreen.main.bounds.height * 140 / 667
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 32, left: 60, bottom: 0, right: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 32
    }
}
