//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Mike Pitre on 12/20/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product(name: "1907 Wall Set", image: "phone-fullscreen1", cellImage: "image-cell1")
        let product2 = Product(name: "1921 Dial Phone", image: "phone-fullscreen2", cellImage: "image-cell2")
        let product3 = Product(name: "1937 Desk Set", image: "phone-fullscreen3", cellImage: "image-cell3")
        let product4 = Product(name: "1984 Motorola Portable", image: "phone-fullscreen4", cellImage: "image-cell4")
        
        products.append(product1)
        products.append(product2)
        products.append(product3)
        products.append(product4)
    
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return products.count
       
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let product = products[indexPath.row]
        
        cell.textLabel?.text = product.name
        
        if let pImage = product.cellImage {
           cell.imageView?.image = UIImage(named: pImage)
        }
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPathForCell(cell) else {
                return
            }
            
            productVC?.product = products[indexPath.row]
            
        }
        
    }
    
    
    
   
    
    
}
