//
//  QRScannerViewController.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/21/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

class QRScannerViewController: UIViewController, QRScannerViewDelegate {
    func qrScanningDidFail() {
        //breakpoint
    }
    
    func qrScanningSucceededWithCode(_ str: String?) {
        //breakpoint
        guard let collectionCertificationVC = storyboard?.instantiateViewController(withIdentifier: "CollectionCertResults") as? CollectionResultsExtension else {
                fatalError("Failed to load CollectionResultsExtension from storyboard.")
        }
  //      collectionCertificationVC.companyName.text = "MY COMPANY2"
        
        
        navigationController?.pushViewController(collectionCertificationVC, animated: true)
        
        
    }
    
    func qrScanningDidStop() {
        //breakpoint
    }
    
    let scannerView = QRScannerView()

    override func viewDidLoad() {
    //    let scannerView = QRScannerView()
        scannerView.delegate = self
        self.view = scannerView
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        scannerView.startScanning()
    }
}
