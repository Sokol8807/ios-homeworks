//
//  FeedViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 15.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    

    var post = Post(title: "Мой пост")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        makeButton()  // вызываем кнопку в viewDidLoad
        
    }
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        button.center = view.center
        button.setTitle("Пост", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)  // добавляет кнопку на экран
    }

    @objc private func tapAction(){
       let postViewContoller = PostViewController()// Добавляем действия со ссылкой на третий экран
        postViewContoller.titlePost = post.title
        navigationController?.pushViewController(postViewContoller, animated: true)
    }

    
    }
    
