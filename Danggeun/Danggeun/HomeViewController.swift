//
//  HomeViewController.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/15.
//

import Foundation
import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var titleArray : [String] = ["강아지 선글라스",
                                 "사용감 있는 수박",
                                 "데스노트 포스터",
                                 "락앤롤 선인장",
                                 "비츠 솔로3 헤드셋",
                                 "남동생 팔아요",
                                 "프라이탁 하와이파이브오 올흰",
                                 "마이크로닉스 x48 기계식 키보드",
                                 "이건 못 참취나물",
                                 "포켓몬 띠부씰 교환",
                                 "만원 팝니다",
                                ]
    
    var imageArray : [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", ]
    
    var townArray : [String] = ["구로구 개봉제3동", "구로구 구로동", "동작구 신대방동", "광명5동", "관악구 신사동", "광명시 하안1동", "오류동", "금천구 가산동", "양천구 신정1동", "구로제1동", "철산4동", ]
    
    var priceArray : [String] = ["10,000원", "2,000원", "20,000원", "9,000원", "80,000원", "나눔🧡", "300,000원", "25,000원", "700원", "1원", "12,000원"]
    
    
    
    private let floatingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.backgroundColor = .orange
        let image = UIImage(systemName: "plus",
                            withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3

        button.layer.cornerRadius = 30
        return button
    }()
    
    
    var blurView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let nibName = UINib(nibName: "HomeTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "homeTableCell")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.rowHeight = UITableView.automaticDimension
        
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
        _ = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard?.instantiateViewController(identifier: "BlurViewController")
        vc?.modalPresentationStyle = .overFullScreen
        
        self.present(vc!, animated: false, completion: nil)
    }

}



extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableCell", for: indexPath) as! HomeTableViewCell
        cell.homeTitleLabel.text = titleArray[indexPath.row]
        cell.homePlaceLabel.text = townArray[indexPath.row]
        cell.homePriceLabel.text = priceArray[indexPath.row]
        cell.homeTableImage.image = UIImage(named: imageArray[indexPath.row])
        cell.homeTitleLabel.sizeToFit()
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                
                titleArray.remove(at: indexPath.row)
                townArray.remove(at: indexPath.row)
                priceArray.remove(at: indexPath.row)
                imageArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                
            } else if editingStyle == .insert {
                
            }
        }
    

}
