//
//  AppDelegate.swift
//  Bankey
//
//  Created by Imalka Muthukumara on 2022-06-14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
       // window?.rootViewController = LoginViewController()
        window?.rootViewController = OnboardingContainerViewController()
        //window?.rootViewController = OnboardingViewController(onboardingText: "Bankey is faster, easier to use, and has a brand new look and feel that will make you feel like you are back in the 80s.", imageName: "delorean")
        
        return true
    }
}

