



import UIKit

class ProfileViewController: UIViewController {
    
    // создаю экземпляр класса ProfileHeaderView
    var profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)   //Добавляю profileHV в качестве subview

    }
    
    
  
    
    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
        profileHeaderView.frame = view.safeAreaLayoutGuide.layoutFrame
        
    }
}
