//
//  PostModel.swift
//  Navigation
//
//  Created by Ilya Sokolov on 02.05.2022.
//

import UIKit

struct Post {
    var author: String
    var image: UIImage
    var likes: Int
    var view: Int
    
    
    static func makePostModel() -> [Post] {
        
        var post = [Post]()
        
        for _ in 0...2 {
        
        post.append(Post(author: "Автор 1", image: UIImage(named: "JumpingCat")!, likes: 3, view: 6))
        post.append(Post(author: "Автор 2", image: UIImage(named: "jumpingCat2")!, likes: 13, view: 56))
        post.append(Post(author: "Автор 3", image: UIImage(named: "jumpingCat3")!, likes: 1, view: 10))
        
        }
        
        return post
    }
}


