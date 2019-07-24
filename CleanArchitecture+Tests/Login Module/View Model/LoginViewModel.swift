//
//  LoginViewModel.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 23/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import Foundation



class LoginViewModel {
    var email: String?
    var password: String?
    var cpf: String?
    
    init(model: Login) {
        self.email = model.email
        self.password = model.password
        self.cpf = model.cpf
    }
    
    func getEmailValidate() -> String {
        guard let email = self.email, email != "" else {
            return "Email Inválido"
        }
        return email
    }
    
    func getPasswordValidate() -> String {
        guard let password = self.password, password != "" && password.count > 8 else {
            return "Password Inválido"
        }
        return password
    }
}
