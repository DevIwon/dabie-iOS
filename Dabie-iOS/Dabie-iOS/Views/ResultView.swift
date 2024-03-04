//
//  ResultView.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import UIKit

class ResultView: UIView {
    //MARK: - Views
    lazy var backGroundImage = UIImageView().then {
        $0.image = UIImage(named: "fourthpage_paper")
    }
    
    lazy var speechBubble = UIImageView().then {
        $0.image = UIImage(named: "speech_bubble")
    }
    
    lazy var anwserText = UILabel().then {
        $0.text = ""
        $0.font = UIFont(name: "omyu pretty", size: 24)
        $0.textAlignment = .center
        $0.textColor = UIColor(hex: "#4C3220")
        $0.numberOfLines = 0
    }
    
    lazy var smartDabieImage = UIImageView().then {
        $0.image = UIImage(named: "smart_characters")
    }
    
    lazy var backButton = UIButton().then {
        $0.setImage(UIImage(named: "back_icon"), for: .normal)
    }
    
    lazy var shareButton =  UIButton().then {
        $0.setImage(UIImage(named: "share_icon"), for: .normal)
    }
    
    lazy var saveButton =  UIButton().then {
        $0.setImage(UIImage(named: "save_icon"), for: .normal)
    }
    
    lazy var stackView = UIStackView().then {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.spacing = 10
    }

    lazy var reAnwserButton = UIButton().then {
        $0.backgroundColor = UIColor(hex: "#4C3220")
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 30
        $0.setTitle("다시 해답 들으러 가기", for: .normal)
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
    
    //MARK: - Methods
    func getAnwserText(anwser: String) {
        anwserText.text = anwser
    }
    
    //MARK: - Setup
    private func setup() {
        setUpBackground()
        setUpSpeechBubble()
        setUpButtons()
    }
    
    func setUpBackground() {
        self.addSubview(backGroundImage)
        self.addSubview(backButton)
        layer.backgroundColor = UIColor(hex: "#FBD0AE").cgColor
        
        backGroundImage.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(15)
            $0.height.equalTo(600)
            $0.centerX.equalToSuperview()
        
        }
        
        backButton.snp.makeConstraints {
            $0.width.height.equalTo(30)
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(5)
            $0.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(5)
        }
        
        
    }
    
    func setUpSpeechBubble() {
        self.addSubview(speechBubble)
        self.addSubview(anwserText)
        self.addSubview(smartDabieImage)
        
        speechBubble.snp.makeConstraints {
            $0.width.equalTo(270)
            $0.height.equalTo(270)
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(100)
            $0.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(30)
        }
        
        anwserText.snp.makeConstraints {
            $0.width.equalTo(260)
            $0.top.equalTo(speechBubble.snp.top).offset(120)
            $0.centerX.equalTo(speechBubble)
        }
        
        smartDabieImage.snp.makeConstraints {
            $0.width.equalTo(168)
            $0.height.equalTo(212)
            $0.trailing.equalToSuperview().inset(10)
            $0.top.equalTo(speechBubble.snp.bottom).offset(10)
        }
    }
    
    func setUpButtons() {
        stackView.addArrangedSubview(shareButton)
        stackView.addArrangedSubview(saveButton)
        self.addSubview(stackView)
        self.addSubview(reAnwserButton)
        
        saveButton.snp.makeConstraints {
            $0.width.height.equalTo(60)
        }
        
        stackView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(self.layer.bounds.height * 0.8)
            $0.centerX.equalToSuperview()
        }
        
        reAnwserButton.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(60)
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
