//
//  ImageModel.swift
//  Navigation
//
//  Created by Ilya Sokolov on 08.05.2022.
//

import UIKit

// создаю структуру для картинок 
struct ImageModel {
    var image: String
    
    static func addImage() -> [ImageModel] {
        var image = [ImageModel]()
        
        image.append(ImageModel(image: "photo1"))
        image.append(ImageModel(image: "photo2"))
        image.append(ImageModel(image: "photo3"))
        image.append(ImageModel(image: "photo4"))
        image.append(ImageModel(image: "photo5"))
        image.append(ImageModel(image: "photo6"))
        image.append(ImageModel(image: "photo7"))
        image.append(ImageModel(image: "photo8"))
        image.append(ImageModel(image: "photo9"))
        image.append(ImageModel(image: "photo10"))
        image.append(ImageModel(image: "photo1"))
        image.append(ImageModel(image: "photo2"))
        image.append(ImageModel(image: "photo3"))
        image.append(ImageModel(image: "photo4"))
        image.append(ImageModel(image: "photo5"))
        image.append(ImageModel(image: "photo6"))
        image.append(ImageModel(image: "photo7"))
        image.append(ImageModel(image: "photo8"))
        image.append(ImageModel(image: "photo9"))
        image.append(ImageModel(image: "photo10"))
        
        return image
    }
}
