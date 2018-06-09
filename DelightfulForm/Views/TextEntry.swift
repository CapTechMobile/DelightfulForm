//
//  TextEntry.swift
//  DelightfulForm
//
//  Created by Andrew Gray on 6/9/18.
//  Copyright © 2018 Andrew Gray. All rights reserved.
//

import UIKit

class TextEntry: UIView {

    let textEntryField = UITextField()

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
        textEntryField.borderStyle = .none
        textEntryField.textColor = UIColor.white
        textEntryField.backgroundColor = UIColor.orange
        textEntryField.attributedPlaceholder = NSAttributedString(string: "placeholder text",
                                                                  attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        //textEntryField.placeholder = "Full Name"
        
        
        
        
        
        let underlineHeight = CGFloat(2.0)
        
        
        
        let underline = CALayer()
        underline.borderColor = UIColor.white.cgColor
        underline.frame = CGRect(x: 0, y: textEntryField.frame.size.height - underlineHeight, width:  textEntryField.frame.size.width, height: textEntryField.frame.size.height)
        
        underline.borderWidth = underlineHeight
        textEntryField.layer.addSublayer(underline)
        textEntryField.layer.masksToBounds = true
        
        
        
        self.addSubview(self.textEntryField)
    }
    
    private func configureConstraints() {
        self.textEntryField.translatesAutoresizingMaskIntoConstraints = false
        
        self.textEntryField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.textEntryField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.textEntryField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        self.textEntryField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

    
        
    }
}
