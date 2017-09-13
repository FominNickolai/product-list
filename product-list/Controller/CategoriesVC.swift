//
//  ViewController.swift
//  product-list
//
//  Created by Fomin Mykola on 9/13/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var categoryTable: UITableView!
    
    //MARK: - Properties

    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.rowHeight = 150
        
    }

}

//MARK: - UITableViewDataSource
extension CategoriesVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        cell.updateView(category: DataService.instance.getCategories()[indexPath.row])
        return cell
    }
    
    
}

//MARK: - UITableViewDelegate
extension CategoriesVC: UITableViewDelegate {
    
}

