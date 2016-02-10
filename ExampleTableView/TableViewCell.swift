//
//  TableViewCell.swift
//  ExampleTableView
//
//  Created by Sam Warfield on 2/10/16.
//  Copyright © 2016 Sam Warfield. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var data: Row?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell(data: Row) {
        self.data = data
        textLabel?.text = data.text
    }
}
