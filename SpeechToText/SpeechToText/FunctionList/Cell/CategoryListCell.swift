//
//  CategoryListCell.swift
//  TetViet
//
//  Created by DatTH-GD on 2/26/20.
//  Copyright © 2020 Rikkeisoft. All rights reserved.
//

import UIKit

class CategoryListCell: UICollectionViewCell {
    
    static let identifier = "CategoryListCell"
    
    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    override func layoutSubviews() {
        viewBg.layer.cornerRadius = self.frame.width/2
    }

    func fillData(title: String, icon: UIImage?) {
        lblTitle.text = title
        imgIcon.image = icon
    }
}
