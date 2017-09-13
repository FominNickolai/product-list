//
//  Product.swift
//  product-list
//
//  Created by Fomin Mykola on 9/13/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import Foundation

struct Product {
    private(set) var title: String
    private(set) var price: String
    private(set) var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
