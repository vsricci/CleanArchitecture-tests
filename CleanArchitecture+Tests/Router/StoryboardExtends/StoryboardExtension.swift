//
//  StoryboardExtension.swift
//  CleanArchitecture+Tests
//
//  Created by Vinicius Ricci on 22/06/19.
//  Copyright © 2019 Vinicius Ricci. All rights reserved.
//

import UIKit

protocol StoryboardExtension {
    static func instantiate() -> Self
}


extension StoryboardExtension where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
