//
//  AddProductViewController.swift
//  OnionDeal
//
//  Created by Thorsten Klusemann on 09.04.16.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class EditProductViewController : UITableViewController {
    
    @IBOutlet weak var productNameTextField: UITextField!
    @IBOutlet weak var basePriceTextField: UITextField!
    @IBOutlet weak var afterPriceTextField: UITextField!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var expireDateLabel: UILabel!
    @IBOutlet weak var setExpireDateButton: UIButton!
    @IBOutlet weak var addPhotoButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var quantityTextField: UITextField!
    
    var newDeal : Deal = Deal()
    
    @IBAction func addPhotoButtonPressed(sender: UIButton) {
        
    }
    
    @IBAction func setExpireDatePressed(sender: UIButton) {
        
    }
    
    @IBAction func saveButtonPressed(sender: UIButton) {
        newDeal = Deal.addDeal(productNameTextField.text!, price: Float(afterPriceTextField.text!)!, photo: UIImage(), expireDate: NSDate(), priceBefore: Float(basePriceTextField.text!)!, shop: "Lidl", quantity: Int())
        discountLabel.text = String(newDeal.calculatedDiscount)
    }
}
