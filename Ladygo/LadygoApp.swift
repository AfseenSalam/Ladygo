//
//  LadygoApp.swift
//  Ladygo
//
//  Created by Afseen Salam on 3/22/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


@main
struct LadygoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var vm = HomePageViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vm)
        }
    }
}
class AppDelegate: NSObject,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("Finish Launching")
        return true
    }
}
