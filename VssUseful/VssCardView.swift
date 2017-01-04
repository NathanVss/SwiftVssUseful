//
//  VssCardView.swift
//  VssUseful
//
//  Created by Nathan Vasse on 07/07/2016.
//  Copyright © 2016 Nathan Vasse. All rights reserved.
//
import UIKit

public class VssCardView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        custom()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        custom()
    }
    
    func custom() {
        
        layer.shadowColor = UIColor.blackColor().CGColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 2
        layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
}
