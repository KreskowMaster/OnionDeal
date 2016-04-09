//
//  ProductsViewController.swift
//  OnionDeal
//
//  Created by Thorsten Klusemann on 09.04.16.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class ProductsViewController : UIViewController {
    
    let dateFormatter: NSDateFormatter = NSDateFormatter()
    
    override func viewDidLoad() {
        dateFormatter.dateStyle = .ShortStyle
    }
}

extension ProductsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell") as! ProductCell
        
        cell.productName?.text = "Test Product"
        cell.expireDate?.text = dateFormatter.stringFromDate(NSDate())
        
        return cell
    }
    
}