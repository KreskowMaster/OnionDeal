//
//  FoodStockViewController.swift
//  OnionDeal
//
//  Created by Krystian Gontarek on 09.04.2016.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class FoodStockViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let dealsArray : [Deal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dealsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewDealCell") as! DealCell
        cell.productName = "Test"
        cell.productPrice = 100
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

    @IBAction func addTapped(sender: AnyObject) {
        Deal.addDeal("testDeal", price: 12.20, photo: UIImage(), expireDate: NSDate(), discount: 50, priceBefore: 50.20, priceAfter: 100.80)
    }
}
