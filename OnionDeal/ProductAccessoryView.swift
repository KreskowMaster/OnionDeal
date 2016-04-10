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
        editButton.setTitle("E", forState: .Normal)
        editButton.addTarget(self, action: #selector(editProduct), forControlEvents: .TouchUpInside)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(editButton)
        
        deleteButton = UIButton(type: .System)
        deleteButton.setTitle("D", forState: .Normal)
        deleteButton.addTarget(self, action: #selector(deleteProduct), forControlEvents: .TouchUpInside)
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(deleteButton)
    }
    
    override func updateConstraints() {
        editButton.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor)
        editButton.topAnchor.constraintEqualToAnchor(self.topAnchor)
        deleteButton.leadingAnchor.constraintEqualToAnchor(editButton.trailingAnchor, constant: 20)
        deleteButton.topAnchor.constraintEqualToAnchor(editButton.topAnchor)
        super.updateConstraints()
    }
    
    func editProduct(sender: UIButton) {
        
    }

    func deleteProduct(sender: UIButton) {
        
    }
}
