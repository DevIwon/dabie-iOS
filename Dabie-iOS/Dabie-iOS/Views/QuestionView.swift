//
//  QuestionView.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import Foundation
import UIKit

class QuestionView: UIView {
    
    //MARK: - Views
    lazy var mainHeader = UIImageView().then {
        $0.image = UIImage(named: "questionHeader")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var textWindowImage = UIImageView().then {
        $0.image = UIImage(named: "Character Text Window")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var anwserButton = UIButton().then {
        $0.backgroundColor = UIColor(hex: "#4C3220")
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 30
        $0.setTitle("해답 들으러 가기", for: .normal)
        $0.titleLabel?.font = UIFont(name: "omyu pretty", size: 24)
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    //MARK: - Setup
    private func setup() {
        setUpBackground()
        setUpMainHeader()
        setUpMainImage()
        setUpAnwserButton()
    }
    
    func setUpBackground() {
        layer.backgroundColor = UIColor(hex: "#FBD0AE").cgColor
    }
    
    func setUpMainHeader() {
        self.addSubview(mainHeader)
        mainHeader.snp.makeConstraints {
            $0.width.equalTo(303)
            $0.height.equalTo(68)
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(30)
            $0.centerX.equalToSuperview()
        }
    }
    
    func setUpMainImage() {
        self.addSubview(textWindowImage)
        textWindowImage.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(380)
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    func setUpAnwserButton() {
        self.addSubview(anwserButton)
        
        anwserButton.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(60)
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
 
    }
}
