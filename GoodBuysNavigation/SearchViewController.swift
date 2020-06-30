//
//  SearchViewController.swift
//  GoodBuysNavigation
//
//  Created by Olivia Hess on 6/30/20.
//  Copyright © 2020 Olivia Hess. All rights reserved.
//

import Foundation
import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        
        view.backgroundColor = .white
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
