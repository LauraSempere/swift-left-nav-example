//
//  backTableVC.swift
//  leftNavExample
//
//  Created by Laura Scully on 1/9/2016.
//  Copyright © 2016 laura.test.com. All rights reserved.
//

import UIKit

class backTableVC: UITableViewController {
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = ["First", "Second", "Third"]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = items[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Selected row::\(indexPath.row)")
        let tabVC = self.storyboard?.instantiateViewControllerWithIdentifier("TabController") as! TabBarController
        selectedPage = "NextVC"
    }

}
