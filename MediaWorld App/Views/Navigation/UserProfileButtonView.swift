//
//  UserProfileView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 12/12/21.
//

import SwiftUI

struct UserProfileButtonView: View {
    @Binding var isPresented: Bool
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }) {
            Image(systemName: "person.fill")
                .font(.title)
                .padding(5)
        }
    }
}

struct UserProfileButtonView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileButtonView(isPresented: .constant(false))
    }
}
