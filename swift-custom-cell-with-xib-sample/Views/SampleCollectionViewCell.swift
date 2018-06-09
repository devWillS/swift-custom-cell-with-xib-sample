//
//  SampleCollectionViewCell.swift
//  swift-custom-cell-with-xib-sample
//
//  Created by devWill on 2018/06/09.
//  Copyright © 2018年 devWill. All rights reserved.
//

import UIKit

class SampleCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = UIColor.lightGray
    }
    
    static var identifier: String {
        return String(describing: self)
    }

}
