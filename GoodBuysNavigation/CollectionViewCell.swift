//
//  CollectionViewCell.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/1/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
