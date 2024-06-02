//
//  SceneDelegate.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let vc = UINavigationController(rootViewController: UIViewController())
        window.rootViewController = vc
        
        // 課題7
//        let vc1 = CenterButtonViewController()
//        vc1.tabBarItem = UITabBarItem(title: "tab1", image: nil, tag: 0)
//        let vc2 = TopLabelViewController()
//        vc2.tabBarItem = UITabBarItem(title: "tab2", image: nil, tag: 1)
//        let vc3 = ScrollStackViewController()
//        vc3.tabBarItem = UITabBarItem(title: "tab2", image: nil, tag: 2)
//
//        let tabController = UITabBarController()
//        tabController.setViewControllers([vc1, vc2, vc3], animated: false)
//        window.rootViewController = tabController
        
        window.makeKeyAndVisible()
        
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

