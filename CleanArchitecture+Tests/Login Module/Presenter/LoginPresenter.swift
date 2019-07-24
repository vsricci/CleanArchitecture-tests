//
//  LoginPresenter.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 23/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import Foundation

protocol GetInfo {
    func getInfo()
//    var success: Bool? { get set }
//    var messageError: String? { get set }
}

protocol ResetPassword {
    func reset(email: String)
//    var success: Bool? { get set }
//    var messageError: String? { get set }
}

protocol ForgotPassword {
    func forgot(email: String)
//    var success: Bool? { get set }
//    var messageError: String? { get set }
}

class LoginPresenter: GetInfo, ResetPassword, ForgotPassword, Response {
    var success: Bool?
    
    var messageError: String?
    
    func getInfo() {
        print("info")
    }
    
    func reset(email: String) {
         print("reset")
    }
    
    func forgot(email: String) {
         print("forgot")
    }
    
    
}
