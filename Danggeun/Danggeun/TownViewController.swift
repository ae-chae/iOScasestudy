//
//  TownViewController.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/16.
//

import Foundation
import UIKit
import SnapKit

final class TownViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    private let items: [String] = [
        "같이해요",
        "동네질문",
        "동네맛집",
        "동네소식",
        "취미생활",
        "분실/실종센터",
        "동네사건사고",
        "해주세요",
        "일상",
        "동네사진전",
    ]
    
    
    
//    AD?.paramContent = self.textView.text
    
    //var content: [String] = [
     //   "안앙천 산책하실 분",
    //    "광명고등학교 앞에서 체크카드 습득했습니다 잘라서 버렸으니까 재발급 받으세요 이x건 씨"
   // ]
    
    
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
    
    override func viewDidLoad() {
        let nibName = UINib(nibName: "TownTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "TownTableViewCell")
        
        super.viewDidLoad()

        setupView()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(floatingButton)

        floatingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
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
        let vc = storyboard?.instantiateViewController(identifier: "Blur2ViewController")
        vc?.modalPresentationStyle = .overFullScreen
        
        self.present(vc!, animated: false, completion: nil)
    }
    
    private func setupView() {
        view.backgroundColor = .white
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = .zero
        flowLayout.minimumInteritemSpacing = 16
        flowLayout.scrollDirection = .horizontal
        flowLayout.sectionInset = .init(top: 5, left: 16, bottom: 5, right: 10)
        
        collectionView.setCollectionViewLayout(flowLayout, animated: false)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    
}


extension TownViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.configure(name: items[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CollectionViewCell.fittingSize(availableHeight: 46, name: items[indexPath.item])
    }
    
}

extension TownViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.itemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TownTableViewCell", for: indexPath) as! TownTableViewCell
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        cell.mainLabel.text = appDelegate.itemList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                appDelegate.itemList.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                
            } else if editingStyle == .insert {
                
            }
        }
    
    
    
    
}



