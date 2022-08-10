//
//  CollectionViewCell.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/17.
//

import Foundation
import UIKit
import SnapKit

final class CollectionViewCell: UICollectionViewCell {
    
    static func fittingSize(availableHeight: CGFloat, name: String?) -> CGSize {
        let cell = CollectionViewCell()
        cell.configure(name: name)
        
        let targetSize = CGSize(width: UIView.layoutFittingCompressedSize.width, height: availableHeight)
        return cell.contentView.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: .fittingSizeLevel, verticalFittingPriority: .required)
    }
    
    private let titleLabel: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
    }
    
    private func setupView() {
        backgroundColor = .white
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        titleLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 0.5
        
        
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(15)
        }
    }
    
    func configure(name: String?) {
        titleLabel.text = name
    }
    
}
