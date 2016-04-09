//
//  FoodStockViewController.swift
//  OnionDeal
//
//  Created by Krystian Gontarek on 09.04.2016.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class FoodStockViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var dealsArray: [Deal] = []

    let dateFormatter: NSDateFormatter = NSDateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // setup date formatter
        dateFormatter.dateStyle = .ShortStyle
    }

    override func viewDidAppear(animated: Bool) {
        dealsArray = Deal.getAllDeals()
    }

}

extension FoodStockViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dealsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewDealCell") as! DealCell

        let deal: Deal = dealsArray[indexPath.row]

        cell.shopName!.text = deal.shop
        cell.productName!.text = deal.name
        cell.productPrice!.amount = deal.price!.doubleValue
        cell.productPhoto!.image = UIImage(data: deal.photo!)
        cell.productDiscount!.text = "\(deal.calculatedDiscount)%"
        cell.expireDate!.text = dateFormatter.stringFromDate(deal.expireDate!)

        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

}
