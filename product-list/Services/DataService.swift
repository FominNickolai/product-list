//
//  DataService.swift
//  product-list
//
//  Created by Fomin Mykola on 9/13/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import Foundation

final class DataService {
    static let instance = DataService()
    private init() { }
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
}
