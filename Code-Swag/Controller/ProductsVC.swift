//
//  ProductsVC.swift
//  Code-Swag
//
//  Created by David Ortiz on 8/28/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Products]()
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.delegate = self
        productsCollection.dataSource = self
    }

    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }

}
