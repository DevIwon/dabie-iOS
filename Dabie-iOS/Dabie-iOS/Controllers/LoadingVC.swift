//
//  LoadingVC.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import UIKit

class LoadingVC: UIViewController {
    //MARK: - Views
    private var loadingView: LoadingView!
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        loadingView = LoadingView(frame: self.view.frame)
        self.view = loadingView

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.moveToNextScreen()
        }
    }
    
    func moveToNextScreen() {
        let resultVC = ResultVC()
        resultVC.modalPresentationStyle = .fullScreen
        
        present(resultVC, animated: false, completion: nil)
    }
}
