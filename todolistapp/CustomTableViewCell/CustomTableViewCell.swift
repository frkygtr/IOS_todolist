//
//  CustomTableViewCell.swift
//  todolistapp
//
//  Created by Furkan Yiğiter on 7.08.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mybutton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
