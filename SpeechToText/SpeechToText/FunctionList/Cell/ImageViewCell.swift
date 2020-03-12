//
//  ImageViewCell.swift
//  Develop
//
//  Created by SonNV-D1 on 1/14/20.
//  Copyright © 2020 Rikkeisoft. All rights reserved.
//

import UIKit

class ImageViewCell: UITableViewCell {

    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewImage.layer.cornerRadius = 70
        viewImage.layer.masksToBounds = true
//        labelTitle.text = "t_description_call".localized
    }
}
