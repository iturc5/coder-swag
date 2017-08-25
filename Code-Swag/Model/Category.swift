//
//  Category.swift
//  Code-Swag
//
//  Created by David Ortiz on 8/24/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String// to make my variables private
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
