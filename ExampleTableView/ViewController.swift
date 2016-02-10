//
//  ViewController.swift
//  ExampleTableView
//
//  Created by Sam Warfield on 2/10/16.
//  Copyright © 2016 Sam Warfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    let dataSource = TableDataSource()

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = dataSource
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(dataSource.data(indexPath).text)
    }
}

