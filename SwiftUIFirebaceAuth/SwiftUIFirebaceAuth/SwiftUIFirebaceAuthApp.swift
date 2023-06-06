//
//  SwiftUIFirebaceAuthApp.swift
//  SwiftUIFirebaceAuth
//
//  Created by Nojood Aljuaid  on 16/11/1444 AH.
//

import SwiftUI
import FirebaseCore
import Firebase



@main
struct SwiftUIFirebaceAuthApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
   
    var body: some Scene {
        WindowGroup{
            let viewModel = AppViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
class AppDelegate : NSObject , UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
