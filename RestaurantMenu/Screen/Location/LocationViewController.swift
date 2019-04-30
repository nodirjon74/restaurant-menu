//
//  LocationViewController.swift
//  RestaurantMenu
//
//  Created by Nodirjon on 4/15/19.
//  Copyright © 2019 Nodirjon. All rights reserved.
//

import UIKit

protocol LocationActions: class {
    func didTapAllow()
}

class LocationViewController: UIViewController {
    
    @IBOutlet weak var locationView: LocationView!
    weak var delegate: LocationActions?

    override func viewDidLoad() {
        super.viewDidLoad()

        locationView.didTapAllow = { [weak self] in
            self?.delegate?.didTapAllow()
        }
        
    }
    
}
