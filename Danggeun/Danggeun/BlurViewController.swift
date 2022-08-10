//
//  BlurViewController.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/15.
//

import Foundation
import UIKit

class BlurViewController: UIViewController {

    @IBOutlet var blurv: UIView!
    
    private let floatingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.backgroundColor = .white
        let image = UIImage(systemName: "xmark",
                            withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .black
        button.setTitleColor(.black, for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3

        button.layer.cornerRadius = 30
        return button
    }()
    
    @IBAction func sellBtn(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.gray.withAlphaComponent(0.8)
        view.isOpaque = false
        
        view.addSubview(floatingButton)
        
        floatingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(
            x: view.frame.size.width - 70,
            y: view.frame.size.height - 150,
            width: 60, height: 60)
    }

    @objc private func didTapButton() {
        self.presentingViewController?.dismiss(animated: false)
    }
}


@IBDesignable extension UIButton {

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
