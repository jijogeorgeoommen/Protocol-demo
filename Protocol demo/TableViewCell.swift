//
//  TableViewCell.swift
//  Protocol demo
//
//  Created by JIJO G OOMMEN on 19/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var labeloutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
