//
//  learnSwiftUIApp.swift
//  learnSwiftUI
//
//  Created by 方小新 on 2022/5/23.
//

import SwiftUI

@main
struct learnSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            HikeView(hike: ModelData().hikes[0])
//            ContentView()
//                .environmentObject((modelData))
        }
    }
}
