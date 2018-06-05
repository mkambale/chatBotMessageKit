//
//  AvatarButton.swift
//  Chip- Hotel Booking Chatbot
//
//  Created by Manjunath K on 5/30/18.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit

class AvatarButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: (bounds.width - 35))
            //titleEdgeInsets = UIEdgeInsets(top: 5, left: (imageView?.frame.width)!+50, bottom: 5, right:5)
            titleLabel?.frame = CGRect(x: (imageView?.frame.width)!+10, y: 10, width: (bounds.width - 25), height: 20)
        }
        
        self.titleLabel?.numberOfLines = 0

        
        let strokeTextAttributes = [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 10)
            ] as [NSAttributedStringKey : Any]
        
        let strokeTextAttributes1 = [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 8)
            ] as [NSAttributedStringKey : Any]

        
        let attrString = NSAttributedString(string: "First ", attributes: strokeTextAttributes)
        let attrString1 = NSAttributedString(string: "Second Line", attributes: strokeTextAttributes1)
        
        let combination = NSMutableAttributedString()
        
        combination.append(attrString)
        combination.append(attrString1)
        self.setAttributedTitle(combination, for: .normal)
    }
    
    override func setTitle(_ title: String?, for state: UIControlState) {
        /*
         let firstLabel = UILabel()
         
         firstLabel.backgroundColor = UIColor.lightGrayColor()
         firstLabel.text = "Hi"
         firstLabel.textColor = UIColor.blueColor()
         firstLabel.textAlignment = NSTextAlignment.Center
         firstLabel.frame = CGRectMake(0, testButton.frame.height * 0.25, testButton.frame.width, testButton.frame.height * 0.2)
         testButton.addSubview(firstLabel)
         
         let secondLabel = UILabel()
         
         secondLabel.backgroundColor = UIColor.lightGrayColor()
         secondLabel.textColor = UIColor.blueColor()
         secondLabel.font = UIFont(name: "Arial", size: 12)
         secondLabel.text = "There"
         secondLabel.textAlignment = NSTextAlignment.Center
         secondLabel.frame = CGRectMake(0, testButton.frame.height * 0.5, testButton.frame.width, testButton.frame.height * 0.2)
         testButton.addSubview(secondLabel)
         */
    }
}
