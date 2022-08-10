//
//  ViewControllerSearch.swift
//  SoundCloud2
//
//  Created by 윤채영 on 2022/07/10.
//

import Foundation
import UIKit

class ViewControllerSearch: UIViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Search"
        self.navigationItem.searchController = searchController
        self.navigationItem.title = "Search"
        self.navigationController?.navigationBar.prefersLargeTitles = true

    }


}
