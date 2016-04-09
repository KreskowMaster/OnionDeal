//
//  Deal+CoreDataProperties.swift
//  OnionDeal
//
//  Created by Thorsten Klusemann on 09.04.16.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Deal {

    @NSManaged var expireDate: NSDate?
    @NSManaged var name: String?
    @NSManaged var photo: NSData?
    @NSManaged var price: NSNumber?
    @NSManaged var priceBefore: NSNumber?
    @NSManaged var shop: String?
    @NSManaged var finishedCount: NSNumber?
    @NSManaged var quantity: NSNumber?

}
