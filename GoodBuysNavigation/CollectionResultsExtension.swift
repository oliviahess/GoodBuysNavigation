//
//  CollectionResultsExtension.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/7/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

class CollectionResultsExtension: CollectionResultsViewController {
    
    @IBOutlet weak var companyName: UILabel!
    
    
    var companyNameText: String?
    
    override func viewDidLoad() {
        companyName.text = companyNameText
    }
    
}
