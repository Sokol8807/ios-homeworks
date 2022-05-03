
import UIKit

class ProfileViewController: UIViewController {
    
    
    
    private var post = PostModel.makePostModel()

    
    private lazy var tableView: UITableView = {
        
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.indentifire)
        
        
        
       return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout ()
    }
    
    private func layout () {
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        
        
        
        
        ])
    }
    
}


// MARK: - UITableViewDataSource

extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int ) -> Int {
        
        return post.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
//        var context: UIListContentConfiguration = cell.defaultContentConfiguration()
//        context.text  = "Секция = \(indexPath.section), ячейка = \(indexPath.row)"
//        context.image = post[indexPath.row].image
//        cell.contentConfiguration = context
//        return cell
    
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.indentifire, for: indexPath) as! PostTableViewCell
        
        cell.setupCell(post[indexPath.row])
        
        return cell
        
    }
    
}


// MARK: - UITableViewDelegate

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //100
        UITableView.automaticDimension   // автоматические размеры - условия элементы должны быть четко привязанны и к верху и к низу
    }
    
}


    
    
    
    
    
    
    
    
    
    
    
    
//    // создаю экземпляр класса ProfileHeaderView
//    let profileHeaderView = ProfileHeaderView()
//
//    let newButton: UIButton = {
//
//        let buttonNew = UIButton()
//        buttonNew.setTitle("NewPost", for: .normal)
//        buttonNew.backgroundColor = .systemBlue
//
//        return buttonNew
//    } ()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //view.backgroundColor = .lightGray
//        setupAutoLayuot()
//        setupNavigationController()
//
//    }
//    //  отвечает за белую полоску в Навигайшен бар с надписью Ваш профиль
//    private func setupNavigationController (){
//
//        let navigationBar = UINavigationBarAppearance()
//        navigationBar.backgroundColor = .white
//        self.navigationController?.navigationBar.standardAppearance = navigationBar
//        self.navigationController?.navigationBar.scrollEdgeAppearance = navigationBar
//        view.backgroundColor = .lightGray
//
//    }
//
//    private func setupAutoLayuot (){
//
//        view.addSubview(profileHeaderView)   //Добавляю profileHeaderView в качестве subview
//        view.addSubview(newButton)           //Добавляю newButton в качестве subview
//
//        profileHeaderView.translatesAutoresizingMaskIntoConstraints.self = false
//        newButton.translatesAutoresizingMaskIntoConstraints.self = false
//
//        NSLayoutConstraint.activate([
//
//            //автолайот для profileHeaderView
//
//            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
//
//            //автолайот для newButton
//
//            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            newButton.heightAnchor.constraint(equalToConstant: 40)
//        ])
//    }
//


