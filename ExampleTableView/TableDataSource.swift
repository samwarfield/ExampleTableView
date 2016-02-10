//
//  TableDataSource.swift
//  ExampleTableView
//
//  Created by Sam Warfield on 2/10/16.
//  Copyright © 2016 Sam Warfield. All rights reserved.
//

import UIKit

class TableDataSource: NSObject, UITableViewDataSource {

    let cellIdentifier = "cell"

    var sections = [Section]()

    override init() {
        let firstSection = Section(title: "First Section", data: ["Row text", "Row text"])
        let secondSection = Section(title: "Second Section", data: ["Row text", "Row text", "Row text"])
        let thirdSection = Section(title: "Third Section", data: ["Row text"])

        sections = [firstSection, secondSection, thirdSection]
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? TableViewCell else {
            return UITableViewCell()
        }
        cell.configureCell(data(indexPath))
        return cell
    }

    func data(indexPath: NSIndexPath) -> Row {
        return sections[indexPath.section].rows[indexPath.row]
    }
}
