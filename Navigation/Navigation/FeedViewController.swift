//
//  FeedViewController.swift
//
//  Navigation
//
//  Created by Ilya Sokolov on 15.04.2022.

// Отвечает за ленту


import UIKit

class FeedViewController: UIViewController {
    
    
    var post = Post(title: "Мой пост")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        stackVc()
        
    }
    
    private let stackView: UIStackView = {
        let viewStack = UIStackView()
        viewStack.translatesAutoresizingMaskIntoConstraints = false
        viewStack.axis = .vertical
        viewStack.distribution = .fillEqually
        viewStack.spacing = 10
        return viewStack
    }()
    
    private var setButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemMint
        button.tintColor = .white
        button.setTitle("Go to Post", for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        return button
    }()
    
    @objc private func tapAction() {
        let postViewController = PostViewController()
//         self.post = Post(title: "Post")
        navigationController?.pushViewController(postViewController, animated: true)
    }
    
    private var viewButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.tintColor = .white
        button.setTitle("Go to Post", for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(didAction), for: .touchUpInside)
        return button
    }()
    
    @objc private func didAction() {
        let postViewController = PostViewController()
        //self.post = Post(title: "Post")
        navigationController?.pushViewController(postViewController, animated: true)
    }
    
    private func stackVc() {
        view.addSubview(stackView)
        [setButton, viewButton] .forEach { stackView.addArrangedSubview($0) }
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
}
