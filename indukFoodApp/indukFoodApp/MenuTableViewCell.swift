//
//  MenuTableViewCell.swift
//  indukFoodApp
//
//  Created by 황재하 on 3/25/23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuImg: UIImageView!
    @IBOutlet weak var menuLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
