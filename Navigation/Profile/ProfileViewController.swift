
import UIKit

class ProfileViewController: UIViewController {
    
    // создаю экземпляр класса ProfileHeaderView
    let profileHeaderView = ProfileHeaderView()
    
    let newButton: UIButton = {
        
        let buttonNew = UIButton()
        buttonNew.translatesAutoresizingMaskIntoConstraints = false
        buttonNew.setTitle("NewPost", for: .normal)
        buttonNew.backgroundColor = .blue
        
        return buttonNew
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupAutoLayuot()
        
       
    }
    
    private func setupAutoLayuot (){
        
        view.addSubview(profileHeaderView)   //Добавляю profileHV в качестве subview
        view.addSubview(newButton)
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints.self = false
        
        
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
