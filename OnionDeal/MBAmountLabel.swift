//
//  MBAmountLabel.swift
//  MonthlyBalance
//
//  Created by Thorsten Klusemann on 09.01.16.
//  Copyright © 2016 Karrmarr Software. All rights reserved.
//

import UIKit

@IBDesignable
class MBAmountLabel : UILabel {
  
  @IBInspectable var amount: Double = 0.0 {
    didSet {
      setAmountLabelText()
    }
  }
  
  private func setAmountLabelText() {
    do {
      try self.text = CurrencyUtil.formattedValue(abs(self.amount))
    } catch {
      self.text = "ERROR!"
    }
  }
}
