//
//  LogInViewController.swift
//  Navigation
//
//  Created by Ilya Sokolov on 30.04.2022.
//

import Foundation
import UIKit

class LogInViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayuotLoginPassword()
        setupLayoutImageButton()
        
    }
    
    
    //добавляю отображение Логотипа ВК
    
    private let logoImageView: UIImageView = {
       
        let logoIV = UIImageView(image: UIImage(named: "logoVK"))
        logoIV.translatesAutoresizingMaskIntoConstraints = false
        logoIV.layer.borderColor = UIColor.lightGray.cgColor
        
        
        
        return logoIV
    }()
    
    
    // создаю стейк логин и пароль
    private let stackViewLoginPassword: UIStackView = {
       
        let loginPasswordSV = UIStackView()
        loginPasswordSV.translatesAutoresizingMaskIntoConstraints = false
        loginPasswordSV.axis = .vertical
        loginPasswordSV.distribution = .fillEqually
        

        return loginPasswordSV
    }()
  
    // создаю поле ввода для почты или телефона
    private var emailTextField: UITextField = {
       
        let emailTF = UITextField()
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        emailTF.text = "Email or phone"
        emailTF.backgroundColor = .systemGray6
        emailTF.layer.borderWidth = 0.5
        emailTF.layer.cornerRadius = 10
        emailTF.layer.borderColor = UIColor.lightGray.cgColor
        emailTF.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        emailTF.textColor = .black
        emailTF.autocapitalizationType = .none
        //emailTF.tintColor =   // нужно уточнить
                
        
        return emailTF
        
    }()
    
    // создаю поле ввода пароля
    private var passwordTextField: UITextField = {
       
        let passwordTF = UITextField()
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.text = "Email or phone"
        passwordTF.backgroundColor = .systemGray6
        passwordTF.layer.borderWidth = 0.5
        passwordTF.layer.cornerRadius = 10
        passwordTF.layer.borderColor = UIColor.lightGray.cgColor
        passwordTF.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        passwordTF.textColor = .black
        passwordTF.autocapitalizationType = .none
        passwordTF.isSecureTextEntry = true
        //emailTF.tintColor =   // нужно уточнить
                
        
        return passwordTF
        
    }()
    

   // создаю кнопку Log In
    private var loginButton: UIButton = {
        
        let buttonLogin = UIButton()
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonLogin.backgroundColor = .blue  // нужно заменить - согласно макета !!
        buttonLogin.tintColor = .white
        buttonLogin.setTitle("Log In", for: .normal)
        
       // button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        
        return buttonLogin
    }()
    
    // действие кнопки
    
//    @objc private func tapAction() {
//        let postViewController = PostViewController()
////         self.post = Post(title: "Post")
//        navigationController?.pushViewController(postViewController, animated: true)
//    }
    
    
    // добавляю отображение и лайауты стейка логин и пароль
    private func setupLayuotLoginPassword() {
        view.addSubview(stackViewLoginPassword)
        
        [emailTextField, passwordTextField] .forEach {stackViewLoginPassword.addArrangedSubview($0)}
        
        NSLayoutConstraint.activate([
        
            stackViewLoginPassword.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 120),
            stackViewLoginPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackViewLoginPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackViewLoginPassword.heightAnchor.constraint(equalToConstant: 100)

        ])
        
     
  
        
    }
    // добавляю отображение логотипа ВК и кнопики логин
    private func setupLayoutImageButton() {
        
        [logoImageView, loginButton ] .forEach {view.addSubview($0)}
        
        NSLayoutConstraint.activate([
            
            // автолэйот для Логотипа
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            
            //автолэйот для кнопки логИн
        
            loginButton.topAnchor.constraint(equalTo: stackViewLoginPassword.bottomAnchor, constant: 16),
            loginButton.leadingAnchor.constraint(equalTo: stackViewLoginPassword.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: stackViewLoginPassword.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        
        
        
        
        ])
            
        }
    
}

