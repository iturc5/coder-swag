//
//  Products.swift
//  Code-Swag
//
//  Created by David Ortiz on 8/25/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import Foundation

struct Products {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
    
}
