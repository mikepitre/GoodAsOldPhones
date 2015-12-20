//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Mike Pitre on 12/19/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSizeMake(375, 800)
    }

}
