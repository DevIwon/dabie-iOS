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
        questionView.textView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension QuestionVC: UITextViewDelegate {
        
    func textViewDidBeginEditing(_ textView: UITextView) {
        questionView.placeHolder.text = ""
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
        if textView.text.count > 100 {
            textView.deleteBackward()
        }
    }
}


