//
//  ContentView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    var officialDeals: [Featured] = Featured.data
    var officialRecents: [Product] = Product.data
    
    var body: some View {
        ZStack {
            TabBarView(userDeals: officialDeals, userRecents: officialRecents)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
