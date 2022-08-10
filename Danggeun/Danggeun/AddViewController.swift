//
//  AddViewController.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/18.
//

import Foundation
import UIKit

class AddViewController: UIViewController {

 
    @IBOutlet weak var textView: UITextView!
    
    
    
    @IBAction func cplBtn(_ sender: Any) {
        let data = self.textView.text
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.itemList.append(data!)
        
        //AD?.paramContent = self.textView.text
        self.presentingViewController?.dismiss(animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        placeholderSetting()

    }


}

extension AddViewController: UITextViewDelegate {
    func placeholderSetting() {
        textView.delegate = self
        textView.text = "우리 동네 관련된 질문이나 이야기를 해보세요."
        textView.textColor = UIColor.lightGray
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "우리 동네 관련된 질문이나 이야기를 해보세요."
            textView.textColor = UIColor.lightGray
        }
    }
}
