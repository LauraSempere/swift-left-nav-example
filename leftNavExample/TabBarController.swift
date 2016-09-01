//
//  TabBarController.swift
//  leftNavExample
//
//  Created by Laura Scully on 1/9/2016.
//  Copyright © 2016 laura.test.com. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = selectedTab

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
       self.selectedIndex = selectedTab
        print("Sel Index::: \(selectedTab)")
    }
//
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
