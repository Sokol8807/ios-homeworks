//
//  File.swift
//  Navigation
//
//  Created by Ilya Sokolov on 18.05.2022.
//

import Foundation

protocol ButtonLoginDelegate: AnyObject {
    func loginButtonPressed()
    func wrongLoginAlert()
}
