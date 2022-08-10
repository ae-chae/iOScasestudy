//
//  ViewControllerMain.swift
//  SoundCloud2
//
//  Created by 윤채영 on 2022/07/11.
//

import Foundation
import UIKit


class ViewControllerMain: UIViewController{
  
    @IBOutlet weak var textField: UITextField!
    @IBAction func sendData(_ sender: Any) {

        guard let vc = storyboard?.instantiateViewController(identifier: "viewControllerMain2") as? ViewControllerMain2 else {return}
        vc.text = self.textField.text ?? ""
        self.present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    

}

