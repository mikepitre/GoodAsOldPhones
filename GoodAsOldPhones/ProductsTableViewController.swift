//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Mike Pitre on 12/20/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorola Portable"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productNames.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = productNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "image-cell\(indexPath.row + 1)")
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowProduct" {
            
            let productVC = segue.destinationViewController as? ProductViewController
            
            let cell = sender as? UITableViewCell
            
            productVC?.productName = cell?.textLabel?.text
        }
    }
    
    
}
