//
//  CertificationResultViewController.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/3/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

protocol CertificationResultViewControllerDelegate {
    
}



class CertificationResultsViewController: UIViewController {
    
    @IBOutlet weak var certificationImageView: UIImageView!
    
    @IBOutlet weak var certificationTextView: UITextView!
    
    var certificationText: String?
    var certificationImage: UIImage?
    
    //weak var delegate: CertificationResultViewControllerDelegate?
    
    
    override func viewWillAppear(_ animated: Bool) {
        certificationTextView.text = certificationText
        certificationImageView.image = certificationImage
    }
    
    override func viewDidLoad() {
        certificationTextView.isEditable = false

    }
}
