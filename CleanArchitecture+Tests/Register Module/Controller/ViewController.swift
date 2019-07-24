//
//  ViewController.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import UIKit

protocol ShowRegister: class {
    func getResult(isSuccess: Bool)
    
}

class ViewController: UIViewController, StoryboardExtension, ShowRegister {
    func getResult(isSuccess: Bool) {
        self.presenter?.show()
    }
    
    weak var mainCoordinator : MainCoordinator?
    var presenter: RegisterPresenter?
    var interactor: RegisterInteractor?
    var worker: RegisterWorker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        RegisterConfigurator.shared.configure(vc: self)
        getPerson()
        
    }

    func getPerson() {
        var person = Person()
        person.name = "vini"
        if let name = person.name as? String{
            presenter?.getPerson(person: person)
            
        }
        
    }

}

