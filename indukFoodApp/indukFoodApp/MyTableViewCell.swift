//
//  MyTableViewCell.swift
//  indukFoodApp
//
//  Created by 황재하 on 3/25/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
