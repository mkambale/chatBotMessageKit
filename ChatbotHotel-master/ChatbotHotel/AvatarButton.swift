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
            titleLabel?.frame = CGRect(x: (imageView?.frame.width)!+10, y: 10, width: (bounds.width - 25), height: (imageView?.frame.height)!)
        }
        
        titleLabel?.lineBreakMode = .byCharWrapping
        
        let strokeTextAttributes = [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 10)
            ] as [NSAttributedStringKey : Any]
        
        let strokeTextAttributes1 = [
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 8)//,
          //  NSAttributedStringKey.paragraphStyle : NSLineBreakMode.byCharWrapping
            ] as [NSAttributedStringKey : Any]

        
        let attrString = NSAttributedString(string: "First\n", attributes: strokeTextAttributes)
        let attrString1 = NSAttributedString(string: "Second Line", attributes: strokeTextAttributes1)
        
        let combination = NSMutableAttributedString()
        
        combination.append(attrString)
        combination.append(attrString1)
        self.setAttributedTitle(combination, for: .normal)
    }
}
