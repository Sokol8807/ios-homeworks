//
//  PostViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 14.04.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.navigationItem.title = titlePost
 
        makeBarItem()
       
    }
    
    
    private func makeBarItem(){
        let barItem = UIBarButtonItem(title: "Инфо", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    @objc private func tapAction(){
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)

    }


    

}





