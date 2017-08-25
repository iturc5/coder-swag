//
//  DataService.swift
//  Code-Swag
//
//  Created by David Ortiz on 8/24/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()//this is a pre-build function SINGLETONS, static means its just one copy cant be more then one on a app
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    func getCategory() -> [Category]{
        return categories
    }
}
