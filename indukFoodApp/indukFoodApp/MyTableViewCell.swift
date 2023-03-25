//
//  MyTableViewCell.swift
//  indukFoodApp
//
//  Created by 황재하 on 3/25/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var resstImg: UIImageView! // 식당 이미지 레이블
    @IBOutlet weak var nameLbl: UILabel!      // 식당 이름 레이블
    @IBOutlet weak var categoryLbl: UILabel!  // 음식 종류 레이블
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
