//
//  QuestionView.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import UIKit

class QuestionView: UIView {
    
    //MARK: - Views
    lazy var mainHeader = UIImageView().then {
        $0.image = UIImage(named: "questionHeader")
    }
    
    lazy var textWindowImage = UIImageView().then {
        $0.image = UIImage(named: "Character Text Window")
    }
    
    lazy var textView = UITextView().then {
        $0.font = UIFont(name: "omyu pretty", size: 18)
        $0.backgroundColor = .clear
    }
    
    lazy var placeHolder = UILabel().then {
        $0.text = "고민을 적어주세요!"
        $0.font = UIFont(name: "omyu pretty", size: 24)
        $0.textColor = UIColor(hex: "#CBB8AC")
    }
    
    lazy var anwserButton = UIButton().then {
        $0.backgroundColor = UIColor(hex: "#4C3220")
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 30
        $0.setTitle("해답 들으러 가기", for: .normal)
        $0.titleLabel?.font = UIFont(name: "omyu pretty", size: 24)
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
        setUpQuestionBox()
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
    
    func setUpQuestionBox() {
        self.addSubview(textWindowImage)
        self.addSubview(textView)
        self.addSubview(placeHolder)
        textWindowImage.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(380)
            $0.centerX.centerY.equalToSuperview()
        }
        
        placeHolder.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(mainHeader.snp.bottom).offset(300)
        }
        
        textView.snp.makeConstraints {
            $0.width.equalTo(340)
            $0.height.equalTo(300)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(mainHeader.snp.bottom).offset(250)
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

