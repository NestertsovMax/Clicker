//
//  ViewController.swift
//  Extensions
//
//  Created by M1 on 27.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array: [Vehicle] = [Plane(), Ship(), Helicopter(), Car()]
        array.forEach{ $0.timePriceShipping(way: 20)}
    }
    
    



}

