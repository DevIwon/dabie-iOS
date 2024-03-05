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
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        startView = StartView(frame: self.view.frame)
        self.view = startView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startView.startButton.addTarget(self, action: #selector(clickedStartButton(sender:)), for: .touchUpInside)
    }
    //MARK: - Actions
    @objc func clickedStartButton(sender: UIButton) {
        let questionVC = QuestionVC()
        questionVC.modalPresentationStyle = .fullScreen
        
        present(questionVC, animated: false, completion: nil)
    }
}
