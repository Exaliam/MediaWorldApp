//
//  ProductModel.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 13/12/21.
//

import Foundation
import SwiftUI

struct Product: Hashable, Decodable {
    var brand: String
    var name: String
    var model: String
    var color: String
    var image: String
    var price: Double
    var fixedPrice: Double
    var available: Int
}

extension Product {
    static let byDefault = Product(brand: "No Brand", name: "New Product", model: "", color: "", image: "", price: 0.00, fixedPrice: 0.00, available: 100)
    //retrieving data from json
    static var data: [Product] {
        try! Bundle.main.decode("Products.json")
    }
}
