//
//  MediaWorld_AppApp.swift
//  MediaWorld App
//
//  Created by Alessandro Colantonio on 10/12/21.
//

import SwiftUI

@main
struct MediaWorld_AppApp: App {
    init() {
        if UITraitCollection.current.userInterfaceStyle == .light {
            UITabBar.appearance().backgroundColor = UIColor(Color.mediaWorldPrimary)
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
