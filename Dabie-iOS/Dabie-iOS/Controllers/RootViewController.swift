//
//  RootViewController.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/05.
//

import UIKit

class RootViewController: UIViewController {
    
    // MARK: Properties
    
    // MARK: Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureUI()
    }
    

    // MARK: Configures
    func configureUI() {
        view.backgroundColor = .red
    }

  

}
