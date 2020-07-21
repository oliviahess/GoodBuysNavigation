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

    
    let scannerView = QRScannerView()

    override func viewDidLoad() {
    //    let scannerView = QRScannerView()
        scannerView.delegate = self
        self.view = scannerView
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        scannerView.startScanning()
    }
    
    func getManufacturerName(str:String) ->String {
        let baseUrl = "https://www.barcodelookup.com/";
        let barcode = str
        let urlString = baseUrl + barcode;
        
        //send a request to https://www.barcodelookup.com/. Look up "Manufacturer"
        let url = URL(string: urlString)!;
        let data = NSData(contentsOf: url)!
        let doc = TFHpple(htmlData: data as Data)
        var manufacturerName = "";
        if let elements = doc?.search(withXPathQuery: "//*[@id='body-container']/section[2]/div/div/div[2]/div[2]/div/div[3]/div/div/span") as? [TFHppleElement] {
            //if elements.size() ==0, this means that the barcode has not been found
            
            for element in elements {
                print(element.content)
                manufacturerName = element.content;
            }
        }
        
        return manufacturerName
    }
    
    func qrScanningDidFail() {
        //breakpoint
    }
    
    func qrScanningSucceededWithCode(_ str: String?) {
        //breakpoint
        guard let collectionCertificationVC = storyboard?.instantiateViewController(withIdentifier: "CollectionCertResults") as? CollectionResultsExtension else {
            fatalError("Failed to load CollectionResultsExtension from storyboard.")
        }

        collectionCertificationVC.companyNameText = getManufacturerName(str: str!)
        
        
        navigationController?.pushViewController(collectionCertificationVC, animated: true)
        
    }
    
    func qrScanningDidStop() {
        //breakpoint
    }
}
