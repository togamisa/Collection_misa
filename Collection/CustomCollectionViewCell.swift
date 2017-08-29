//
//  CustomCollectionViewCell.swift
//  Collection
//
//  Created by 戸苅未紗子 on 2017/08/29.
//  Copyright © 2017年 戸苅未紗子. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var customLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        customLabel.text = "あ"
    }
    
}
