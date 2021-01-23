//
//  BuildSettingInjectionApp.swift
//  BuildSettingInjection
//
//  Created by Gio on 24/1/21.
//

import SwiftUI

@main
struct BuildSettingInjectionApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// Because this is just an example app, there are only the dummy structs that Xcode generated.
// This class can be used to load the `Bundle` for this target as an alternative to
// `Bundle.main`.
class ClassFromMainBundle {}
