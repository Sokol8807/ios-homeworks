//
//  TapAllPhotoCellDelegate.swift
//  Navigation
//
//  Created by Ilya Sokolov on 18.05.2022.
//
//
import UIKit

protocol TapAllPhotoCellDelegate: AnyObject {
    func tapAction(photo: UIImage)
    func pressCancelAnimationButton()
}
