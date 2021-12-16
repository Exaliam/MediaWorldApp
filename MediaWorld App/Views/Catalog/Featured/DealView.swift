//
//  DealView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 14/12/21.
//

import SwiftUI

struct DealView: View {
    var dealImage: String = "DefaultDeal"
    var dealDue: String = ""
    var dealName: String = "New Deal"
    var dealDex: String = "Description"
    var dealOffers: String = "Offers"
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.white)
                .frame(width: 350, height: 400)
            
            Image(dealImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 350, maxHeight: 400)
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text(dealDue)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.mediaWorldRed)
                    Text(dealName)
                        .font(.title)
                        .foregroundColor(Color.mediaWorldFontPrimary)
                    Text(dealDex)
                        .foregroundColor(Color.mediaWorldFontPrimary)
                }
                .padding()
                
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 352, height: 70)
                    
                    HStack(alignment: .bottom) {
                        Text(dealOffers)
                            .font(.caption)
                        .foregroundColor(Color.mediaWorldFontSecondary)
                        
                        Spacer()
                        
                        Button {
                            print("Button tapped")
                        } label: {
                            Text("DISCOVER")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: 100, alignment: .center)
                                .background(Color.mediaWorldButton)
                                .clipShape(Capsule())
                        }
                    }
                    .padding()
                }
            }
//                        .padding()
        }
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

struct DealView_Previews: PreviewProvider {
    static var previews: some View {
        DealView()
    }
}
