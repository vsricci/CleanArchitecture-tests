//
//  MainCoordinator.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import UIKit

class MainCoordinator: NSObject, Coordinator {
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(nav: UINavigationController) {
        self.navigationController = nav
    }
    
    func start() {
        navigationController.delegate = self
        let vc = ViewController.instantiate()
        vc.mainCoordinator = self
        navigationController.pushViewController(vc, animated: true)
        
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                print(index)
                
                break
            }
        }
    }
    
    
}

// Directy interaction with navigationController delegate

extension MainCoordinator: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        
//        if let createAccountVC = fromViewController as? CreateAccountViewController {
//            print(childCoordinators.count)
//            childDidFinish(createAccountVC.coordinator)
//        }
//
//        else if let loginVC = fromViewController as? LoginViewController {
//            print(childCoordinators.count)
//            childDidFinish(loginVC.loginCoordinator)
//        }
        
    }
}
