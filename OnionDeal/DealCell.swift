//
//  DealCell.swift
//  OnionDeal
//
//  Created by Krystian Gontarek on 09.04.2016.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class DealCell : UITableViewCell {
    
    @IBOutlet var shopName : UILabel?
    
    @IBOutlet var productName : UILabel?
    
    @IBOutlet var productPhoto : UIImageView?
    
    @IBOutlet var productPrice : MBAmountLabel?
    
    @IBOutlet var productDiscount : UILabel?
    
    @IBOutlet var expireDate : UILabel?
    
    @IBOutlet weak var quantity: UILabel!
    @IBAction func increaseFinishCount(sender: UIButton) {
        
    }
}
