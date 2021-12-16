//
//  InStoreView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 10/12/21.
//

import SwiftUI

struct InStoreView: View {
    
    var title: String {
        "In Store"
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

struct InStoreView_Previews: PreviewProvider {
    static var previews: some View {
        InStoreView()
    }
}
