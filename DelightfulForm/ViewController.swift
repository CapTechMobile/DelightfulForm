//
//  ViewController.swift
//  DelightfulForm
//
//  Created by Andrew Gray on 6/9/18.
//  Copyright © 2018 Andrew Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var badgeViewContainer: UIView!
    @IBOutlet var dataEntryView: UIView!
    @IBOutlet var nextButton: UIButton!
    
    var viewToAnimate = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.layer.cornerRadius = nextButton.frame.height / 4
        // button shadow for depth
        
        let nameEntryFieldView = TextEntry(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 50.0))

        self.dataEntryView.addSubview(nameEntryFieldView)
        
        self.viewToAnimate = nameEntryFieldView.textEntryField
        
    }


    // UI Events
    
    @IBAction func nextButtonTouchedDown(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3, animations: {
            
            //self.nextButton.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        })
        

        
        
        
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        let rect = self.viewToAnimate.convert(self.viewToAnimate.bounds, to: self.badgeViewContainer)

        let nameLabel = UILabel(frame: rect)
        nameLabel.backgroundColor = UIColor.purple
        self.badgeViewContainer.addSubview(nameLabel)

        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: UIView.AnimationOptions.curveEaseOut, animations: {
            


            
            

            self.nextButton.frame.origin.y -= 20
            
            
            nameLabel.center.y = 20
            
            
        }) { (finished) in
            UIView.animate(withDuration: 0.2, animations: {
                //self.nextButton.frame.size.height -= 20
                
                self.nextButton.frame.origin.y += 20
                
            })
        }
        
        
        
    }
    
    
    // add to badge
    // where to put it
    
    
}

