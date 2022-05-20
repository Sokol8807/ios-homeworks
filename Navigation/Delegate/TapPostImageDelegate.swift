//
//  TapPostImageDelegate.swift
//  Navigation
//
//  Created by Ilya Sokolov on 18.05.2022.
//

import UIKit

protocol TapPostImageDelegate: AnyObject {
    func postImagePressed(author: String, description: String, image: UIImage)
}
