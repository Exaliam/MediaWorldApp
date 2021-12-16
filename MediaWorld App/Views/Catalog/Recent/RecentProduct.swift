//
//  RecentProduct.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 15/12/21.
//

import SwiftUI

struct RecentProduct: View {
    var productAvailability: String = ""
    var productName: String = "New Product"
    var productSpecs: String = ""
    var productImage: Image = Image("ipad")
    var productPrice: String = ""
    var redLine: Image? = nil
    var productFixedPrice: String = ""
    
    var body: some View {
        Button {
            print("Button tapped")
        } label: {
            
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(Color.mediaWorldCategory)
                    .frame(width: 250, height: 250)
                
                productImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200, maxHeight: 200)
                
                VStack(alignment: .leading)
                {
                    Text(productAvailability)
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.mediaWorldRed)
                    
                    Text(productName)
                        .font(.title3)
                        .foregroundColor(Color.mediaWorldFontSecondary)
                    
                    Text(productSpecs)
                        .font(.footnote)
                        .foregroundColor(Color.mediaWorldFontSecondary)
                    
                    Spacer()
                    
                    HStack {
                        ZStack {
                            Text(productPrice)
                                .font(.title2)
                                .foregroundColor(Color.mediaWorldFontPrimary)
                            redLine
                                .foregroundColor(Color.mediaWorldRed)
                                .font(.largeTitle)
                        }
                        
                        Spacer()
                        
                        Text(productFixedPrice)
                            .fontWeight(.bold)
                            .foregroundColor(Color.mediaWorldFontSecondary)
                            .font(.title)
                    }
                }
                .padding()
            }
            .cornerRadius(20)
            .shadow(radius: 5)
        }
    }
}

struct RecentProduct_Previews: PreviewProvider {
    static var previews: some View {
        RecentProduct()
    }
}
