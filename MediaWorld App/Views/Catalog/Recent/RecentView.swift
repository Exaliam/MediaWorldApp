//
//  RecentView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 12/12/21.
//

import SwiftUI

struct RecentView : View {
    var products: [Product]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(products.indices, id: \.self) { index in
                        RecentProduct(productAvailability: displayLastProducts(available: products[index].available), productName: displayEntireName(brand: products[index].brand, name: products[index].name), productSpecs: displayModelAndColor(model: products[index].model, color: products[index].color), productImage: Image("\(products[index].image)"), productPrice: checkPrice(price: products[index].price, fixedPrice: products[index].fixedPrice), redLine: displayRedLine(fixedPrice: products[index].fixedPrice), productFixedPrice: checkFixedPrice(price: products[index].price, fixedPrice: products[index].fixedPrice))
                    }
                }
                .padding()
            }
        }
    }
    
    //display expiring products
    func displayLastProducts(available: Int) -> String {
        return available > 10 ? "" : available == 0 ? "OUT OF STOCK" : "LAST \(available)"
    }
    
    //display name on card
    func displayEntireName(brand: String, name: String) -> String {
        var productName: String
        
        if name == "" {
            productName = "No name"
        } else {
            if brand != "" {
                productName = "\(brand) " + "\(name)"
            } else {
                productName = "\(name)"
            }
        }
        
        return productName
    }
    
    //display model and color
    func displayModelAndColor(model: String, color: String) -> String {
        var modelAndColor: String
        
        if model != "" && color != "" {
            modelAndColor = "\(model) " + "\(color)"
        } else if model == "" && color != "" {
            modelAndColor = "\(color)"
        } else if model != "" && color == "" {
            modelAndColor = "\(model)"
        } else {
            modelAndColor = ""
        }
        
        return modelAndColor
    }
    
    //check and display price
    func checkPrice(price: Double, fixedPrice: Double) -> String {
        return fixedPrice == 0 ? "" : "\(price)€"
    }
    
    //check and display fixed price
    func checkFixedPrice(price: Double, fixedPrice: Double) -> String {
        return fixedPrice == 0 ? "\(price)€" : "\(fixedPrice)€"
    }
    
    //check and apply red line on discounted price
    func displayRedLine(fixedPrice: Double) -> Image? {
        return fixedPrice == 0 ? nil : Image(systemName: "line.diagonal")
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView(products: [])
    }
}
