//
//  CategoriesView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 12/12/21.
//

import SwiftUI

struct CategoriesView : View {
    
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center, spacing: 20) {
                CategoryButton(categoryName: "Phone", categoryImage: Image("phone"))
                CategoryButton(categoryName: "Computer", categoryImage: Image("computer"))
            }
            .padding(5)
            
            HStack(alignment: .center, spacing: 20) {
                CategoryButton(categoryName: "TV", categoryImage: Image("tv"))
                CategoryButton(categoryName: "Gaming", categoryImage: Image("gaming"))
            }
            .padding(5)
            
            HStack(alignment: .center, spacing: 20) {
                CategoryButton(categoryName: "Camera", categoryImage: Image("camera"))
                CategoryButton(categoryName: "Audio", categoryImage: Image("audio"))
            }
            .padding(5)
            
            HStack(alignment: .center, spacing: 20) {
                CategoryButton(categoryName: "Smart Home", categoryImage: Image("smarthome"))
                CategoryButton(categoryName: "Hobby", categoryImage: Image("hobby"))
            }
            .padding(5)
        }
        .padding()
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
