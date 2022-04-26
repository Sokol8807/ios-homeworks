
import UIKit

class ProfileViewController: UIViewController {
    
    // создаю экземпляр класса ProfileHeaderView
    var profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)   //Добавляю profileHV в качестве subview
//        profileHeaderView.translatesAutoresizingMaskIntoConstraints.self = false
//        profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        profileHeaderView.widthAnchor.constraint(equalToConstant: 220).isActive = true
        
    }
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.bounds
    
    }
}
