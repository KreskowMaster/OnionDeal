//
//  Deal+CoreDataProperties.swift
//  OnionDeal
//
//  Created by Krystian Gontarek on 09.04.2016.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Deal {

    @NSManaged var name: String?
    @NSManaged var price: NSNumber?
    @NSManaged var photo: NSData?
    @NSManaged var expireDate: NSDate?
    @NSManaged var priceAfter: NSNumber?
    @NSManaged var priceBefore: NSNumber?
    @NSManaged var discount: NSNumber?

}
