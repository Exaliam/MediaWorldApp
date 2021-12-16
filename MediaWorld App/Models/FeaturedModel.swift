//
//  FeaturedModel.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 12/12/21.
//

import Foundation
import SwiftUI

struct Featured: Hashable, Decodable {
    var name: String
    var image: String
    var dex: String
    var deals: String
    var due: Int
    
//    func isExpiring(dueDate: Int) -> Bool {
//        dueDate < 21 ? true : false
//    }
}

extension Featured {
    static let byDefault = Featured(name: "New Featured", image: "", dex: "Description", deals: "Deal", due: 0)
    //retrieving data from json
    static var data: [Featured] {
        try! Bundle.main.decode("Featured.json")
    }
}
