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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
