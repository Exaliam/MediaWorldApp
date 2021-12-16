//
//  CatalogView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 10/12/21.
//

import SwiftUI

struct CatalogView: View {
    var catalogDeals: [Featured]
    var catalogRecents: [Product]
    
    var title: String {
        "Catalog"
    }
    
    @State var isPresented = false
    @State private var searchString = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mediaWorldPrimary
                    .ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .center) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Featured")
                                    .font(.title)
                                    .bold()
                            }
                            Spacer()
                        }
                        .padding()
                        FeaturedView(deals: catalogDeals)
                        
                        Spacer()
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Recent")
                                    .font(.title)
                                    .bold()
                            }
                            Spacer()
                        }
                        .padding()
                        RecentView(products: catalogRecents)
                        Spacer()
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Categories")
                                    .font(.title)
                                    .bold()
                            }
                            Spacer()
                        }
                        .padding()
                        CategoriesView()
                        Spacer()
                    }
                }
                .searchable(text:$searchString)
                .navigationBarTitle(title)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        UserProfileButtonView(isPresented: $isPresented)
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("FRIDAY, DEC 17")
                            .foregroundColor(.gray).bold().font(.callout)
                    }
            }
            }
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(catalogDeals: [], catalogRecents: [])
    }
}
