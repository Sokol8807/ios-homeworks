//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Ilya Sokolov on 04.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenWidth = UIScreen.main.bounds.width
        let sceenHigth = UIScreen.main.bounds.height
        if let myView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            myView.frame = CGRect (x: 16, y: 40 , width: screenWidth - 30 , height: sceenHigth - 100)
            view.addSubview(myView)
        }
        
        
    }
    
}
