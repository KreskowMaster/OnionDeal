//
//  ProductAccessoryView.swift
//  OnionDeal
//
//  Created by Thorsten Klusemann on 09.04.16.
//  Copyright © 2016 OnionDealDevs. All rights reserved.
//

import UIKit

class ProductAccessoryView : UIView {
    
    var editButton: UIButton!
    var deleteButton: UIButton!
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        editButton = UIButton(type: .System)
        editButton.frame = CGRect(x: 8, y: 8, width: 24, height: 24)
        editButton.setBackgroundImage(UIImage(named: "editIcon"), forState: .Normal)
        editButton.addTarget(self, action: #selector(editProduct), forControlEvents: .TouchUpInside)
        self.addSubview(editButton)
        
        deleteButton = UIButton(type: .System)
        deleteButton.frame = CGRect(x: 48, y: 8, width: 24, height: 24)
        deleteButton.setBackgroundImage(UIImage(named: "deleteIcon"), forState: .Normal)
        deleteButton.addTarget(self, action: #selector(deleteProduct), forControlEvents: .TouchUpInside)
        self.addSubview(deleteButton)
    }
    
    func editProduct(sender: UIButton) {
        print("Edit Tapped")
    }

    func deleteProduct(sender: UIButton) {
        print("Delete Tapped")
    }
}
