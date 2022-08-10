//
//  ViewControllerMain2.swift
//  SoundCloud2
//
//  Created by 윤채영 on 2022/07/11.
//

import Foundation
import UIKit

class ViewControllerMain2: UIViewController {
  
    @IBOutlet weak var reData: UILabel!
    var text:String = ""
    
    @IBAction func goTabBar(_ sender: UIButton) {
        let tabbar = UIStoryboard.init(name: "Main", bundle: nil)
        guard let tabBarController = tabbar.instantiateViewController(withIdentifier: "TabBarController")as? UITabBarController else {return}
                
        tabBarController.modalPresentationStyle = .fullScreen
        self.present(tabBarController, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.reData.text = text
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let alert = UIAlertController(title: " ", message: "\(text) 님, 환영합니다!", preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(action)
        self.present(alert, animated: true)
        var text:String = ""
    }


}
