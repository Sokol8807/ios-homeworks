//
//  TabBarViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 14.04.2022.
//


import UIKit

class TabBarViewController: UITabBarController {
    
    
    let feedVC = FeedViewController()
    let profileVC = ProfileViewController()
    
    let loginVC = LogInViewController ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
        
    }
    
    private func setupControllers (){
        
        // создаем навигайшен контролер1
        
        let navFeedVC = UINavigationController(rootViewController: feedVC)
        feedVC.tabBarItem.title = "Лента"
        feedVC.tabBarItem.image = UIImage(systemName: "bubble.right.circle")
        feedVC.navigationItem.title = "Ваша Лента"
        
        // создаем навигайшен контролер2
        
        let navProfileVC = UINavigationController(rootViewController: profileVC)
        profileVC.tabBarItem.title = "Профиль"
        profileVC.tabBarItem.image = UIImage(systemName: "person.crop.square.fill")
        profileVC.navigationItem.title = "Ваш профиль" // отвечает за полоску сверху
       
        
        let navLoginVC = UINavigationController(rootViewController: loginVC)
        loginVC.tabBarItem.title = "Логин"
        loginVC.tabBarItem.image = UIImage(systemName: "person.crop.square.fill")
       // loginVC.navigationItem.title = "" // отвечает за полоску сверху
        
        
        
        
        viewControllers = [navFeedVC,navProfileVC, navLoginVC]
    }
    
}


