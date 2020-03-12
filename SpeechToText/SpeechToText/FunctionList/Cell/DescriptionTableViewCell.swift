//
//  DescriptionTableViewCell.swift
//  Develop
//
//  Created by SonNV-D1 on 1/14/20.
//  Copyright © 2020 Rikkeisoft. All rights reserved.
//

import UIKit

class DescriptionTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var decription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(functionType: FunctionType) {
        title.text = ""
        decription.text = functionType.content
    }
}
