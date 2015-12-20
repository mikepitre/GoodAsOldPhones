//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Mike Pitre on 12/19/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = UIImage(named: "phone-fullscreen3")
    }

    @IBAction func addToCartPressed(sender: AnyObject) {
        print("Button Tapped")
    }
}
