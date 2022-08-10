//
//  TownTableViewCell.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/17.
//

import UIKit

class TownTableViewCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.mainLabel.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
