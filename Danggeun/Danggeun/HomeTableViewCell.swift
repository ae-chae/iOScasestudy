//
//  HomeTableViewCell.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/15.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homeTableImage: UIImageView!
    
    @IBOutlet weak var homeTitleLabel: UILabel!
    @IBOutlet weak var homePlaceLabel: UILabel!
    @IBOutlet weak var homePriceLabel: UILabel!
    
    @IBOutlet weak var homeChatNum: UILabel!
    @IBOutlet weak var homeLikeNum: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        homeTableImage.layer.cornerRadius = homeTableImage.frame.width/8
        homeTableImage.clipsToBounds = true
    }

}
