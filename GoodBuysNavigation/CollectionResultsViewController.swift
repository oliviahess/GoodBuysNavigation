//
//  CollectionResultsViewController.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 7/1/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

class CollectionResultsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let items = ["1","2", "3", "4", "5", "6", "7","12", "23", "24", "35", "46", "71","72", "73", "47", "75", "76", "77","72", "73", "74", "75", "76"];
    //initialize with names of images
    let images: [UIImage] = [
        UIImage(named: "betterCotton")!,
        UIImage(named: "bluesign")!,
        UIImage(named: "canopy")!,
        UIImage(named: "carbonTrust")!,
        UIImage(named: "caregora")!,
        UIImage(named: "ccba")!,
        UIImage(named: "cleanClothes")!,
        UIImage(named: "crueltyFree")!,
        UIImage(named: "ethicalTrading")!,
        UIImage(named: "fairmined")!,
        UIImage(named: "fairTrade")!,
        UIImage(named: "labourOrg")!,
        UIImage(named: "lwgStandards")!,
        UIImage(named: "organic")!,
        UIImage(named: "rds")!,
        UIImage(named: "recycled")!,
        UIImage(named: "rws")!,
        UIImage(named: "socialAccountability")!,
        UIImage(named: "soilAssociation")!,
        UIImage(named: "swan")!,
        UIImage(named: "vegan")!,
        UIImage(named: "vegetarian")!,
        UIImage(named: "workplaceConditions")!,
        UIImage(named: "wrap")!
        
    ]
    
    private let spacing:CGFloat = 16.0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.myImage.image = images[indexPath.item];
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.item);

        guard let certificationVC = storyboard?.instantiateViewController(withIdentifier: "CertificationResults") as? CertificationResultsViewController else {
            fatalError("Failed to load CertificationResultsViewController from storyboard.")
        }
    
        certificationVC.certificationText = "This will include the content for the description of the certification"
        certificationVC.certificationImage = images[indexPath.item]
        navigationController?.pushViewController(certificationVC, animated: true)
       
    }
    
    
}
