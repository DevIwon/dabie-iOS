//
//  ResultVC.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//
import FirebaseCore
import FirebaseFirestore
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
        getFireBaseData()
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
    
    func getFireBaseData() {
        MyFireStore.shared.fetchData { (anwsers, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                if let anwsers = anwsers?.randomElement() {
                    self.resultView.getAnwserText(anwser: anwsers.text)
                }
            }
        }

    }
}
