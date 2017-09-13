//
//  CategoryCell.swift
//  product-list
//
//  Created by Fomin Mykola on 9/13/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    //MARK: - Update View
    func updateView(category: Category) {
        categoryTitle.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
    }


}
