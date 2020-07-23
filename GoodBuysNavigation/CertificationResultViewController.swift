//
//  CertificationResultViewController.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/3/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

class CertificationResultsViewController: UIViewController {
    
    @IBOutlet weak var certificationImageView: UIImageView!
    
    @IBOutlet weak var certificationTextView: UITextView!
    
    @IBOutlet weak var certificationNameLabel: UILabel!
    
    var certificationText: String?
    var certificationName: String?
    var certificationImage: UIImage?
    
    override func viewWillAppear(_ animated: Bool) {
        certificationTextView.text = certificationText
        certificationNameLabel.text = certificationName
        certificationImageView.image = certificationImage
    }
    
    override func viewDidLoad() {
        certificationTextView.isEditable = false

    }
}
