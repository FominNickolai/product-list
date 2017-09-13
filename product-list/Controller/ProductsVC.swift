//
//  ProductsVC.swift
//  product-list
//
//  Created by Fomin Mykola on 9/13/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var productCollection: UICollectionView!
    
    //MARK: - Properties
    
    private(set) var products = [Product]()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK: - Initialization Product
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
}

//MARK: - UICollectionViewDataSource
extension ProductsVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        item.updateViews(product: products[indexPath.row])
        return item
    }
    
    
}

//MARK: - UICollectionViewDelegate
extension ProductsVC: UICollectionViewDelegate {
    
}


