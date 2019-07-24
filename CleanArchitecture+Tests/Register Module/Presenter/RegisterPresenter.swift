//
//  RegisterPresenter.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import UIKit
protocol PersonInfo: class {
    func getPerson(person: Person)
}


class RegisterPresenter: PersonInfo {
    
    var interactor: RegisterInteractor?
    weak var viewController: UIViewController?
    var showRegister: ShowRegister? = nil
    
    var person : Person?
    
    func getPerson(person: Person) {
        interactor?.getPerson(person: person)
        self.person = person
        showRegister?.getResult(isSuccess: self.interactor?.isRegisted ?? Bool())
    }
    
    func show() {
        if self.interactor?.isRegisted == true {
            viewController?.present(showSuccess(), animated: true, completion: nil)
        }else {
            viewController?.present(showError(message: getError()), animated: true, completion: nil)
        }
        
    }
    
    func showSuccess() -> UIViewController {
        let alertVC = UIAlertController(title: "Success", message: "Person name is \(self.person?.name ?? "")", preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: { ( _ ) in
        }))
        return alertVC
    }
    func showError(message: String) -> UIViewController {
        let alertVC = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: { ( _ ) in
        }))
        return alertVC
    }
    
    func getError() -> String {
        return interactor?.getMessageError() ?? ""
    }
}
