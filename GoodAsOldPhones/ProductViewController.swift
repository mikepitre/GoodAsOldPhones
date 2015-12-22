//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Mike Pitre on 12/19/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var product: Product?

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = product?.name
        
        if let i = product?.image {
           productImageView.image = UIImage(named: i)
        }
        
    }

    @IBAction func addToCartPressed(sender: AnyObject) {
        print("Button Tapped")
    }
}
