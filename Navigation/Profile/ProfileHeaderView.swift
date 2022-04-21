//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Ilya Sokolov on 21.04.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(image)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let image: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: "cat"))
        imageView.layer.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        imageView.layer.cornerRadius = 50
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true    // Обрезаю по баундс
        imageView.contentMode = .scaleAspectFill  //без растяжки 
        
        return imageView
    } ()
    
    
    
    
    
    
    
}
