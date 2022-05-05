//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Ilya Sokolov on 21.04.2022.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayuot()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // добавляю аватарку
    private var avatarImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "cat"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 55
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.clipsToBounds = true    // Обрезаю по баундс
        imageView.contentMode = .scaleAspectFill  //без растяжки
        return imageView
    } ()
    
    // добавляю кнопуку
    private var setStatusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Set status", for: .normal)
        button.layer.cornerRadius = 4
        button.titleLabel?.textColor = UIColor.systemRed
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        //действия кнопки
        button.addTarget(self, action: #selector(buttonStatus), for: .touchUpInside)
        return button
    }()
    
    // добавляю текстовое поле для имени
    private var fullNameLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lazy cat"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    // добавляю поле для статуса
    private var statusView: UITextView = {
        let textView = UITextView ()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Waiting for something"
        textView.backgroundColor = .clear
        textView.textColor = .gray
        textView.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return textView
    }()
    
    // добавляю поле для ввода статуса
    private var statusTextField: UITextField = {
        let fieldText = UITextField()
        fieldText.translatesAutoresizingMaskIntoConstraints = false
        fieldText.text = ""
        fieldText.backgroundColor = .white
        fieldText.layer.cornerRadius = 12
        fieldText.layer.borderWidth = 1
        fieldText.layer.borderColor = UIColor.black.cgColor
        fieldText.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        fieldText.leftView = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: fieldText.frame.height))
        fieldText.leftViewMode = .always
        
        fieldText.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        return fieldText
    }()
    @objc private func buttonStatus() {
        statusView.text = statusText
        print(statusView.text ?? "")
    }
    
    @objc private func statusTextChanged() {
        statusText = statusTextField.text ?? ""
    }
    
    // добавляю функцию авторесайзинга
    private func setupLayuot (){
        [avatarImageView, setStatusButton, fullNameLable, statusView, statusTextField ].forEach {self.addSubview($0)}  // добавляю массив из сабвью
        
        // активирую лайот общим массивом
        NSLayoutConstraint.activate([
            
            // настройка отображение avatarImageView
            avatarImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 110),
            avatarImageView.heightAnchor.constraint(equalToConstant: 110),
            
            //настройка отображение setStatusButton
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16 ),
            setStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            
            //настройка отображение fullNameLable
            fullNameLable.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            fullNameLable.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            
            //настройка отображение statusView
            statusView.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -6),
            statusView.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            statusView.heightAnchor.constraint(equalToConstant: 30),
            
            // настройка отображение statusTextField
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16),
            statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            statusTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
