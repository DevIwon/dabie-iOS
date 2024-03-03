//
//  ResultVC.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import UIKit

class ResultVC: UIViewController {
    
    //MARK: - Views
    private var resultView: ResultView!
    //MARK: - Properties
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        resultView = ResultView(frame: self.view.frame)
        self.view = resultView
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonActions()
        
    }
    //MARK: - Actions
    func buttonActions() {
        resultView.backButton.addTarget(self, action: #selector(clickedButton(sender:)), for: .touchUpInside)
        resultView.reAnwserButton.addTarget(self, action: #selector(clickedButton(sender:)), for: .touchUpInside)
    }
    
    @objc func clickedButton(sender: UIButton) {
        let quesitonVC = QuestionVC()
        quesitonVC.modalPresentationStyle = .fullScreen
        
        present(quesitonVC, animated: false, completion: nil)
    }
}
