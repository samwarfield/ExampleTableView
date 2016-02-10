//
//  Section.swift
//  ExampleTableView
//
//  Created by Sam Warfield on 2/10/16.
//  Copyright © 2016 Sam Warfield. All rights reserved.
//

import Foundation

struct Section {
    var title: String?
    var rows = [Row]()

    init(title: String?, data: [String]) {
        self.title = title
        data.forEach({ value in
            let row = Row(data: value)
            rows.append(row)
        })
    }
}