//
//  ResponseProtocol.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 23/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import Foundation

protocol Response {
    var success: Bool? { get set }
    var messageError: String? { get set }
}
