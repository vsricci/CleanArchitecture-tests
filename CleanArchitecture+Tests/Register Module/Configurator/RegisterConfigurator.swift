//
//  RegisterConfigurator.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 23/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import UIKit

class RegisterConfigurator: NSObject {
    
    static var shared = RegisterConfigurator()
    
    func configure(vc : ViewController){
        let interactor = RegisterInteractor()
        let presenter = RegisterPresenter()
        let worker = RegisterWorker()
        
        vc.interactor = interactor
        vc.presenter = presenter
        vc.worker = worker
        presenter.interactor = interactor
        presenter.viewController = vc
        presenter.showRegister = vc
        interactor.worker = vc.worker
    }
}

