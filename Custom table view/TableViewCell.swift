//
//  TableViewCell.swift
//  Custom table view
//
//  Created by HARSHID PATEL on 08/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lb2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
