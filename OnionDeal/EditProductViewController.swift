//
//  AddProductViewController.swift
//  OnionDeal
//
//  Created by Thorsten Klusemann on 09.04.16.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class EditProductViewController : UITableViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var productNameTextField: UITextField!
    @IBOutlet weak var basePriceTextField: UITextField!
    @IBOutlet weak var afterPriceTextField: UITextField!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var expireDateTextField: UITextField!
    @IBOutlet weak var addPhotoButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var quantityTextField: UITextField!
    @IBOutlet weak var addedPhotoImageView: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    var pickedImage = UIImage()
    
    var onSave: ((Deal) -> ())?
    
    @IBAction func addPhotoButtonPressed(sender: UIButton) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
            imagePicker.sourceType = .Camera
        } else {
            imagePicker.sourceType = .PhotoLibrary
        }
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(sender: UIButton) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = .ShortStyle
        
        let name = productNameTextField.text
        if name == nil || name == "" {
            self.showAlertWithTitle("ERROR", message: "Please enter a product name!")
            return
        }
        let expires = dateFormatter.dateFromString(expireDateTextField.text!)
        if expires == nil {
            self.showAlertWithTitle("ERROR", message: "Please enter a valid expire date!")
            return
        }
        
        let beforePrice = Float(basePriceTextField.text ?? "0.0") ?? 0
        let price = Float(afterPriceTextField.text ?? "0.0") ?? 0
        let quantity = Int(quantityTextField.text ?? "0") ?? 0
        
        let deal: Deal = Deal.addDeal(name!, price: price, photo: pickedImage, expireDate: expires!, priceBefore: beforePrice, shop: "Lidl", quantity: quantity)
        
        self.onSave?(deal)
        self.navigationController?.popViewControllerAnimated(true)
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        pickedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        addedPhotoImageView.image = pickedImage
    }
    
}
