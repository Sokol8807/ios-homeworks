//
//  PostModel.swift
//  Navigation
//
//  Created by Ilya Sokolov on 02.05.2022.
//

import UIKit

struct PostModel {
    var author: String
    var description: String?
    var image: String
    var likes: Int  
    var view: Int
    
    static func makePostModel() -> [PostModel] {
        
        var post = [PostModel]()
        
        post.append(PostModel(author: "Автор 1", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть 1", image: ("jumpingCat"), likes: 0, view: 0))
        post.append(PostModel(author: "Автор 2", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть 2", image: ("jumpingCat2"), likes: 0, view: 0))
        post.append(PostModel(author: "Автор 3", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть 3", image: ("jumpingCat3"), likes: 0, view: 0))
        post.append(PostModel(author: "Автор 4", description: "Какое-то очень длинное или короткое описание, которого может быть или не быть4", image: ("jumpingCat4"), likes: 0, view: 0))
        
        
        return post
    }
}


