//
//  RootViewController.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/05.
//

import UIKit

class StartVC: UIViewController {
    
    //MARK: - Views
       private var startView: StartView!
    // MARK: Properties
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        startView = StartView(frame: self.view.frame)
        self.view = startView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
