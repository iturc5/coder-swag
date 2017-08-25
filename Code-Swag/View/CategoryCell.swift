//
//  CategoryCell.swift
//  Code-Swag
//
//  Created by David Ortiz on 8/24/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
