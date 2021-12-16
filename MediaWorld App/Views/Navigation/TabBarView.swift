//
//  TabBarView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 10/12/21.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    
    @State var selected: Int = 0
    
    var userDeals: [Featured]
    var userRecents: [Product]
    
    var body: some View {
        TabView(selection: $selected) {
            CatalogView(catalogDeals: userDeals, catalogRecents: userRecents)
                .tabItem {
                    Image(systemName: "square.stack.3d.down.right.fill")
                    Text("Catalog")
                }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
            
            InStoreView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("In Store")
                }
        }
        .accentColor(Color.mediaWorldRed)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(userDeals: [], userRecents: [])
    }
}
