//
//  RegisterWorker.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import Foundation

class RegisterWorker {
    
    func registerUser(person: Person?, registered: @escaping (Person?, Error?) -> Void) {
        if let person = person {
            if person.name != ""{
                registered(person, nil)
            }else {
                 registered(nil, NSError.init(domain: "Person doens't exists", code: 1, userInfo: nil))
            }
            
        }else {
            registered(nil, NSError.init(domain: "Person doens't exists", code: 1, userInfo: nil))
        }
    }
}
