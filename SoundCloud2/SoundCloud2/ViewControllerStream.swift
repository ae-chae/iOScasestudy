//
//  ViewControllerStream.swift
//  SoundCloud2
//
//  Created by 윤채영 on 2022/07/10.
//

import Foundation
import UIKit

class ViewControllerStream: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Stream"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .white
        
        
    }


}

