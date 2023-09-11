//
//  CarsAppApp.swift
//  CarsApp
//
//  Created by Yacine on 9/10/23.
//

import SwiftUI

@main
struct CarsAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                HomeCarsView()
            }
        }
    }
}
