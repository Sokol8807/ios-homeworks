
import UIKit

class ProfileViewController: UIViewController {
    
    // создаю экземпляр класса ProfileHeaderView
    let profileHeaderView = ProfileHeaderView()
    
    let newButton: UIButton = {
        
        let buttonNew = UIButton()
        buttonNew.setTitle("NewPost", for: .normal)
        buttonNew.backgroundColor = .systemBlue
        
        return buttonNew
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .lightGray
        setupAutoLayuot()
        setupNavigationController()
        
    }
    //  отвечает за белую полоску в Навигайшен бар с надписью Ваш профиль
    private func setupNavigationController (){
        
        let navigationBar = UINavigationBarAppearance()
        navigationBar.backgroundColor = .white
        self.navigationController?.navigationBar.standardAppearance = navigationBar
        self.navigationController?.navigationBar.scrollEdgeAppearance = navigationBar
        view.backgroundColor = .lightGray
        
    }
    
    private func setupAutoLayuot (){
        
        view.addSubview(profileHeaderView)   //Добавляю profileHeaderView в качестве subview
        view.addSubview(newButton)           //Добавляю newButton в качестве subview
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints.self = false
        newButton.translatesAutoresizingMaskIntoConstraints.self = false
        
        NSLayoutConstraint.activate([
            
            //автолайот для profileHeaderView
            
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            //автолайот для newButton
            
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            newButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
