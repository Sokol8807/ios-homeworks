//
//  PostModel.swift
//  Navigation
//
//  Created by Ilya Sokolov on 02.05.2022.
//

import UIKit

struct PostModel {
    var author: String
    var description: String
    var image: UIImage
    var likes: Int  
    var view: Int
    
    static func makePostModel() -> [PostModel] {
        
        var posts = [PostModel]()
        
        posts.append(PostModel(author: "Автор 1", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть 1", image: UIImage(named:"jumpingCat")!, likes: 0, view: 0))
        posts.append(PostModel(author: "Автор 2", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть 2", image: UIImage(named:"jumpingCat2")!, likes: 0, view: 0))
        posts.append(PostModel(author: "Автор 3", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть 3", image: UIImage(named:"jumpingCat3")!, likes: 0, view: 0))
        posts.append(PostModel(author: "Автор 4", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть4", image: UIImage(named:"jumpingCat4")!, likes: 0, view: 0))
        
        
        return posts
    }
}


