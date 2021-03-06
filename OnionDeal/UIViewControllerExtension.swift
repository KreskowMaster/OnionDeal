//
//  UIViewControllerExtension.swift
//  MonthlyBalance
//
//  Created by Thorsten Klusemann on 30.11.15.
//  Copyright © 2015 Karrmarr Software. All rights reserved.
//

import UIKit

extension UIViewController {
  
  func showAlertWithTitle(title: String, message: String) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
    self.presentViewController(alertController, animated: true, completion: nil)
  }
  
  func showConfirmationDialogWithTitle(title: String, message: String, confirmed: ((UIAlertAction) -> Void)? = nil) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
    alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: confirmed))
    self.presentViewController(alertController, animated: true, completion: nil)
  }
    
}
