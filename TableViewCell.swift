//
//  TableViewCell.swift
//  machinetest1(Q2)
//
//  Created by Felix ITs 08 on 06/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet var prize: UILabel!
    @IBOutlet var book: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
