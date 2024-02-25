//
//  QuestionVC.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import UIKit
class QuestionVC: UIViewController {
    
    //MARK: - Views
       private var questionView: QuestionView!
    //MARK: - Properties
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        questionView = QuestionView(frame: self.view.frame)
        self.view = questionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
  
}
