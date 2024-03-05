//
//  AlertVC.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/03/04.
//
import SnapKit
import UIKit


class AlertVC: UIViewController {
  
    //MARK: - Views
    private var alertView: AlertView!
    
    //MARK: - Life Cycles
    override func loadView() {
        super.loadView()
        
        alertView = AlertView(frame: self.view.frame)
        self.view = alertView
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Dd")

    }
    
}
