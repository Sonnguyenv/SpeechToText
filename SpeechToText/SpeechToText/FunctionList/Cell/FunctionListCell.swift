//
//  FunctionListCell.swift
//  TetViet
//
//  Created by PhuongTHN-D1 on 7/3/19.
//  Copyright © 2019 Rikkeisoft. All rights reserved.
//

import UIKit

class FunctionListCell: UITableViewCell {

    @IBOutlet weak var functionImageView: UIImageView!
    @IBOutlet weak var functionNameLabel: UILabel!
    @IBOutlet weak var viewContainer: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    public func configureCell(functionType: FunctionType) {
        functionImageView.image = functionType.icon?.withRenderingMode(.alwaysTemplate)
        functionImageView.tintColor = UIColor.red
        functionNameLabel.text = functionType.functionTitile
    }

    private func setupViews() {
        viewContainer.layer.cornerRadius = 8
        self.selectionStyle = .none
    }
}
