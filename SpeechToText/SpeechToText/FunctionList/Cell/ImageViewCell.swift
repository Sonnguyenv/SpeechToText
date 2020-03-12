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
    @IBOutlet weak var textField: UITextField!
    var textData: ((String)->Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewImage.layer.cornerRadius = 70
        viewImage.layer.masksToBounds = true
        
    }
    
    @IBAction func editingDidEndTextField(_ sender: UITextField) {
        textData?(sender.text ?? "")
    }
}
