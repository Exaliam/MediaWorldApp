//
//  CategoryButton.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 15/12/21.
//

import SwiftUI

struct CategoryButton: View {
    var categoryName: String = "New Category"
    var categoryImage: Image = Image("audio")
    
    var body: some View {
        Button {
            print("Button tapped")
        } label: {
            ZStack (alignment: .center) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.mediaWorldCategory)
                    .frame(width: 170, height: 170, alignment: .center)
                    .shadow(radius: 5)
                
                categoryImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 150, maxHeight: 150)
                
                VStack(alignment: .leading) {
                    Text(categoryName)
                        .font(.title3)
                        .foregroundColor(.mediaWorldFontSecondary)
                        .padding()
                    
                    Spacer()
                }
            }
        }
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton()
    }
}
