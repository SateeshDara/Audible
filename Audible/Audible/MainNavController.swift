//
//  MainNavigationController.swift
//  Audible
//
//  Created by Sateesh Dara on 14/09/18.
//  Copyright © 2018 Sateesh Dara. All rights reserved.
//


import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        if isLoggedIn() {
            //assume user is logged in
            
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
            //perhaps we'll do something here later
        })
    }
}
