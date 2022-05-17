//
//  DetailPostViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 17.05.2022.
//

import UIKit

class DetailPostViewController : UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout ()
        
        view.backgroundColor = .systemGray6
        navigationItem.title = "Подробнее"
        navigationController?.navigationBar.isHidden = false
        
    }
    
    
    private let scrollView: UIScrollView = {
       let viewScroll = UIScrollView()
        viewScroll.translatesAutoresizingMaskIntoConstraints = false
        return viewScroll
        
    } ()
    
    

    
    
    private var viewContent: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var postView: UIImageView = {
        let imageView = UIImageView ()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private var authourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }()
    
    private var descriptionLable: UILabel = {
        let descriptionLable = UILabel()
        descriptionLable.translatesAutoresizingMaskIntoConstraints = false
        descriptionLable.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        descriptionLable.textColor = .systemGray
        descriptionLable.numberOfLines = 0
        return descriptionLable
    }()
    
    private var likesLable: UILabel = {
        let lableLike = UILabel()
        lableLike.translatesAutoresizingMaskIntoConstraints = false
        lableLike.font = .systemFont(ofSize: 16, weight: .regular)
        lableLike.textColor = .black
        return lableLike
    }()
    
    private var viewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = .black
        label.textAlignment = .right
        return label
    }()
    
    
    
    // подписываю PostModel под элементы таблицы
    func setupCell(_ post: PostModel) {
        authourLabel.text = post.author
        postView.image = UIImage(named: post.image)
        descriptionLable.text = post.description
        likesLable.text = "Likes: \(post.likes)"
        viewLabel.text = "Views: \(post.view)"
        
    }
    
    private func layout() {
        view.addSubview(scrollView)
        scrollView.addSubview(viewContent)
        
        
        [postView,descriptionLable, authourLabel, likesLable, viewLabel].forEach {viewContent.addSubview($0)}
        
        NSLayoutConstraint.activate([
            
            //констрейн для scrollView
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            //констрейн для viewContent
            viewContent.topAnchor.constraint(equalTo: scrollView.topAnchor),
            viewContent.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            viewContent.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            viewContent.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            viewContent.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            // Констрейнт для authourLabel
            authourLabel.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 16),
            authourLabel.leadingAnchor.constraint(equalTo: viewContent.leadingAnchor, constant: 16),
            authourLabel.trailingAnchor.constraint(equalTo: viewContent.trailingAnchor, constant: -16),
            
            // Констрейнт для postView
            postView.topAnchor.constraint(equalTo: authourLabel.bottomAnchor, constant: 16),
            postView.leadingAnchor.constraint(equalTo: viewContent.leadingAnchor),
            postView.trailingAnchor.constraint(equalTo: viewContent.trailingAnchor),
            postView.heightAnchor.constraint(equalTo: postView.widthAnchor),
            
            // Констрейнт для descriptionLable
            descriptionLable.topAnchor.constraint(equalTo: postView.bottomAnchor, constant: 16),
            descriptionLable.leadingAnchor.constraint(equalTo: viewContent.leadingAnchor, constant: 16),
            descriptionLable.trailingAnchor.constraint(equalTo: viewContent.trailingAnchor, constant: -16),
            
            // Констрейнт для likesLable
            likesLable.topAnchor.constraint(equalTo: descriptionLable.bottomAnchor, constant: 16),
            likesLable.leadingAnchor.constraint(equalTo: viewContent.leadingAnchor, constant: 16),
            likesLable.trailingAnchor.constraint(equalTo: viewContent.centerXAnchor),
            likesLable.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -16),
            
            // Констрейнт для viewLabel
            viewLabel.topAnchor.constraint(equalTo: descriptionLable.bottomAnchor, constant: 16),
            viewLabel.leadingAnchor.constraint(equalTo: viewContent.centerXAnchor),
            viewLabel.trailingAnchor.constraint(equalTo: viewContent.trailingAnchor, constant: -16),
            viewLabel.bottomAnchor.constraint(equalTo: viewContent.bottomAnchor, constant: -16)
        ])
    }
    
    
    
    
    
    
    
    
    
}
