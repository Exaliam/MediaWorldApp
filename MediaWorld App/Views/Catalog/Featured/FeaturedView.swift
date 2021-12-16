//
//  FeaturedView.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 12/12/21.
//

import SwiftUI

struct FeaturedView : View {
    var deals: [Featured]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(deals.indices, id: \.self) { index in
                    DealView(dealImage: "\(deals[index].image)", dealDue: Expiring(dueDate: deals[index].due), dealName: deals[index].name, dealDex: deals[index].dex, dealOffers: deals[index].deals)
                }
            }
            .padding()
        }
    }
    
    //if due date is near, place an alert
    func Expiring(dueDate: Int) -> String {
        return dueDate < 21 ? "EXPIRING SOON" : ""
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView(deals: [])
    }
}
