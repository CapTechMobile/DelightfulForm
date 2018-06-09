//
//  MultipleSelection.swift
//  DelightfulForm
//
//  Created by Andrew Gray on 6/9/18.
//  Copyright © 2018 Andrew Gray. All rights reserved.
//

import UIKit

class MultipleSelection: UIView {

    // buttons
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        self.clipsToBounds = false
        
        self.configureSubviews()
        self.configureConstraints()
    }
    
    private func configureSubviews() {
        //self.addSubview(self.textEntryField)
    }
    
    private func configureConstraints() {
        //        self.textEntryField.translatesAutoresizingMaskIntoConstraints = false
        //
        //        self.textEntryField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        //        self.textEntryField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        //        self.textEntryField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        //        self.textEntryField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        
        
    }

}
