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

    static func getAllDeals() -> [Deal] {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let request = NSFetchRequest(entityName: "Deal")
        let results = try! context.executeFetchRequest(request)
        
        return results as! [Deal]
    }
    
    static func addDeal(name : String, price : Float, photo : UIImage, expireDate : NSDate, discount : Int, priceBefore : Float, priceAfter : Float) {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let newDeal = NSEntityDescription.insertNewObjectForEntityForName("Deal", inManagedObjectContext: context) as! Deal
        newDeal.name = name
        newDeal.price = price
        newDeal.photo = UIImagePNGRepresentation(photo)
        newDeal.expireDate = expireDate
        newDeal.discount = discount
        newDeal.priceBefore = priceBefore
        newDeal.priceAfter = priceAfter
        
        try! context.save()
    }
    
    
}
