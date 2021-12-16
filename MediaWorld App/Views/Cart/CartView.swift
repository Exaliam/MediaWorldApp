//
//  CartView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 10/12/21.
//

import SwiftUI

struct CartView: View {
    
    var title: String {
        "Cart"
    }
    
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Work in progress")
                    .navigationBarTitle(title)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    UserProfileButtonView(isPresented: $isPresented)
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
