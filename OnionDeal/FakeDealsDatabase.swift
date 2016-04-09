//
//  FakeFoodDatabase.swift
//  OnionDeal
//
//  Created by Krystian Gontarek on 09.04.2016.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit
import CoreData

class FakeDealsDatabase {
    
    static func createFakeDatabase() {

        if let deals = Deal.getAllDeals() {
            if deals.count > 0 {
                return
            }
        } else {
            print("Invalid deals array!")
            return
        }

        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let deal1 = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        deal1.name = "Onion"
        deal1.price = 5.0
        deal1.photo = UIImageJPEGRepresentation(UIImage(named: "onion")!, 1.0)
        deal1.expireDate = NSDate()
        deal1.priceBefore = 10.00
        deal1.shop = "Biedronka"
        
        let deal2 = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        deal2.name = "Chocolate Milka Oreo"
        deal2.price = 7.00
        deal2.photo = UIImageJPEGRepresentation(UIImage(named: "chocolate")!, 1.0)
        deal2.expireDate = NSDate()
        deal2.priceBefore = 9.00
        deal2.shop = "Biedronka"
        
        let deal3 = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        deal3.name = "Bean"
        deal3.price = 10.0
        deal3.photo = UIImageJPEGRepresentation(UIImage(named: "bean")!, 1.0)
        deal3.expireDate = NSDate()
        deal3.priceBefore = 15.00
        deal3.shop = "Lidl"
        
        let deal4 = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        deal4.name = "Orange"
        deal4.price = 3.0
        deal4.photo = UIImageJPEGRepresentation(UIImage(named: "orange")!, 1.0)
        deal4.expireDate = NSDate()
        deal4.priceBefore = 12.00
        deal4.shop = "Tesco"
        
        let deal5 = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        deal5.name = "7 Days Crossaint"
        deal5.price = 2.0
        deal5.photo = UIImageJPEGRepresentation(UIImage(named: "sevendays")!, 1.0)
        deal5.expireDate = NSDate()
        deal5.priceBefore = 7.00
        deal5.shop = "Lidl"
        
        try! context.save()
    }
    
}