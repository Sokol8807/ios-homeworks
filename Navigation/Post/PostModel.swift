//
//  PostModel.swift
//  Navigation
//
//  Created by Ilya Sokolov on 02.05.2022.
//

import UIKit

struct PostModel {
    var author: String
    var image: UIImage
    var likes: Int   //должен быть Int
    var view: Int
    
    
    static func makePostModel() -> [PostModel] {
        
        var post = [PostModel]()
        
        for _ in 0...2 {
        
        post.append(PostModel(author: "Автор 1", image: UIImage(named: "jumpingCat")!, likes: 3, view: 6))
        post.append(PostModel(author: "Автор 2", image: UIImage(named: "jumpingCat2")!, likes: 13, view: 56))
        post.append(PostModel(author: "Автор 3", image: UIImage(named: "jumpingCat3")!, likes: 1, view: 10))
        
        }
        
        return post
    }
}


