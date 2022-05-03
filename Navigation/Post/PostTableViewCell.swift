//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by Ilya Sokolov on 03.05.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
     
    

    private var whiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    private var postImageView: UIImageView = {
        
        let imageView = UIImageView ()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .black  
        
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
        
    }()
    
    
    private var authourName: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray4
        label.text = "nameLable"
        return label
    }()
    
    
    private var likesDescriprion: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray4
        label.text = "descriptionLable"
        label.numberOfLines = 2
        return label
    }()
    
    
    private var viewLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray4
        label.text = "views "
        return label
    }()
   
    // переообределяю инициализатор
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
        customizeCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(_ post: PostModel) {
        
        postImageView.image = post.image
        authourName.text = post.author
        likesDescriprion.text = "Likes \(post.likes)"
        
    }
    
    
    
    private func customizeCell(){
        whiteView.layer.cornerRadius = 10
        whiteView.layer.borderWidth = 2
        whiteView.layer.borderColor = UIColor.black.cgColor
        
        
    }
    
    private func layout() {
       
        [whiteView, postImageView, authourName, likesDescriprion].forEach {contentView.addSubview($0)}
        
//        let heighView: CGFloat = 100
        let viewInset: CGFloat = 8
        let inset: CGFloat = 10
        
        NSLayoutConstraint.activate([
        
            whiteView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: viewInset),
            whiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: viewInset),
            whiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -viewInset),
            whiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -viewInset),
            
            
            
            postImageView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: inset),
            postImageView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: inset),
            postImageView.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -inset),
            postImageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            authourName.topAnchor.constraint(equalTo: postImageView.topAnchor),
            authourName.leadingAnchor.constraint(equalTo: postImageView.trailingAnchor, constant: inset),
            authourName.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -inset),
        
            likesDescriprion.topAnchor.constraint(equalTo: authourName.bottomAnchor, constant: inset),
            likesDescriprion.leadingAnchor.constraint(equalTo: authourName.leadingAnchor),
            likesDescriprion.trailingAnchor.constraint(equalTo: authourName.trailingAnchor),
            likesDescriprion.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -inset)
   
        
        
        ])
        
        
    }
    
}
