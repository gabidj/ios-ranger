//
//  rangerApp.swift
//  ranger WatchKit Extension
//
//  Created by Gabi DJ on 24.06.2022.
//

import SwiftUI

@main
struct rangerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
