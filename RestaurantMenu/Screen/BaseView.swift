//
//  BaseView.swift
//  RestaurantMenu
//
//  Created by Nodirjon on 4/15/19.
//  Copyright © 2019 Nodirjon. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure() {
        
    }
}
