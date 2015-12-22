//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Mike Pitre on 12/22/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import Foundation

class Product {
    var name: String?
    var image: String?
    var cellImage: String?
    
    init(name: String, image: String, cellImage: String) {
        self.name = name
        self.image = image
        self.cellImage = cellImage
    }
}
