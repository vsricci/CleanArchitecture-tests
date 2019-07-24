//
//  RegisterInteractor.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import Foundation

protocol RegisterPerson : class {
    func getPerson(person: Person)
    var isRegisted: Bool? { get set }
    var message: String? { get set }
}

class RegisterInteractor: RegisterPerson {
    var message: String?
    
    var worker: RegisterWorker?
    var isRegisted: Bool?


    func getPerson(person: Person) {
        worker?.registerUser(person: person, registered: { (result, error) in
            if result != nil {
                self.isRegisted = true
            }
            if let error = error as NSError? {
                self.isRegisted = false
                self.message = error.domain
            }
        })
    }
    
    func getMessageError() -> String {
        return self.message ?? ""
    }
}
