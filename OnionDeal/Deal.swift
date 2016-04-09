//
//  Deal.swift
//  OnionDeal
//
//  Created by Krystian Gontarek on 09.04.2016.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit
import CoreData


class Deal: NSManagedObject {
    
    var calculatedDiscount : Int {
        return Int((priceBefore!.doubleValue - price!.doubleValue) / priceBefore!.doubleValue * 100)
    }

    static func getAllDeals() -> [Deal]? {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest(entityName: "Deal")
        let results = try! context.executeFetchRequest(request)
        
        return (results as? [Deal])
    }
    
    static func addDeal(name : String, price : Float, photo : UIImage, expireDate : NSDate, priceBefore : Float, shop : String) {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let newDeal = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        newDeal.name = name
        newDeal.price = price
        newDeal.photo = UIImagePNGRepresentation(photo)
        newDeal.expireDate = expireDate
        newDeal.priceBefore = priceBefore
        newDeal.shop = shop
        
        try! context.save()
    }
    
    
}
