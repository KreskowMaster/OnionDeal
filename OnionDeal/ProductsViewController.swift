//
//  ProductsViewController.swift
//  OnionDeal
//
//  Created by Thorsten Klusemann on 09.04.16.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class ProductsViewController : UIViewController {
    
    var myDeals = Deal.getDealsForShop("Lidl")
    
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
        return myDeals?.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell") as! ProductCell
        
        let deal = myDeals![indexPath.row]
        
        cell.productName?.text = deal.name
        if let expireDate = deal.expireDate {
            cell.expireDate?.text = dateFormatter.stringFromDate(expireDate)
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            let indexPaths = [indexPath]
            myDeals?.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths(indexPaths, withRowAnimation: .Automatic)
        }
    }
}