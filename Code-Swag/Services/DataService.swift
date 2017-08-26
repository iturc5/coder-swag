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
    
    private let hats = [
      Products(title: "Devlopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
      Products(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
      Products(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
      Products(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
       Products(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
       Products(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
       Products(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie02.png"),
       Products(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie03.png")
    ]
    
    private let shirts = [
        Products(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Products(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Products(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Products(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Products(title: "KickFlip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Products]()//empty array and initialized
    
    func getCategory() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Products]{
        switch title {
        case "SHIRTS":
          return  getShirts()
        case "HATS":
          return getHats()
        case "HOODIES":
          return getHoodies()
        case "DIGITAL":
          return  getDigitalGoods()
        default:
           return getShirts()
        }
        
    }
    
    func getShirts() -> [Products]{
        return shirts
    }
    
    func getHats() -> [Products]{
        return hats
    }
    
    func getHoodies() -> [Products]{
        return hoodies
    }
    
    func getDigitalGoods() -> [Products]{
        return digitalGoods
    }
    
}
