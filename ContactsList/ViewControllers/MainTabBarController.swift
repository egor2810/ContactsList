//
//  MainTabBarController.swift
//  ContactsList
//
//  Created by Егор Аблогин on 14.12.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    
    private let persons = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        viewControllers?.forEach { UIViewController in
            let navigationVC = UIViewController as? UINavigationController
            
            if let easyContactsVC = navigationVC?.topViewController as? EasyContactsViewController {
                easyContactsVC.persons = persons
            } else if let hardContactsVC = navigationVC?.topViewController as? HardContactsViewController {
                hardContactsVC.persons = persons
            }
        }

    }
}
