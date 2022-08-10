//
//  ViewControllerHome.swift
//  SoundCloud2
//
//  Created by 윤채영 on 2022/07/07.
//

import UIKit

class ViewControllerHome: UIViewController {
  
    @IBOutlet weak var label1: UILabel!
    var text:String = ""
    

    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .white
    
    }


}

