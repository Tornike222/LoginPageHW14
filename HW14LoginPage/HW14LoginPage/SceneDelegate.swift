//
//  SceneDelegate.swift
//  HW14LoginPage
//
//  Created by telkanishvili on 06.04.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.rootViewController = LoginViewController()
        window?.makeKeyAndVisible()
    }
    
}

