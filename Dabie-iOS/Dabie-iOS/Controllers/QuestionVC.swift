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
    private var alertView: AlertView!
    //MARK: - Properties
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        questionView = QuestionView(frame: self.view.frame)
        self.view = questionView
        alertView = AlertView(frame: self.view.frame)
        questionView.textView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionView.anwserButton.addTarget(self, action: #selector(clickedAnwserButton(sender:)), for: .touchUpInside)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //MARK: - Actions
    @objc func clickedAnwserButton(sender: UIButton) {
        checkEmptyText()
     
    }
    func checkEmptyText() {
        if questionView.textView.text == "" 
        {
            self.view.addSubview(alertView)
            alertView.confirmButton.addTarget(self, action: #selector(confirmButtonTapped(sender: )), for: .touchUpInside)
        }
        
        else
        {
            let loadingVC = LoadingVC()
            loadingVC.modalPresentationStyle = .fullScreen
            present(loadingVC, animated: false, completion: nil)
        }
    }
    @objc func confirmButtonTapped(sender: UIButton) {
        alertView.removeFromSuperview()
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


