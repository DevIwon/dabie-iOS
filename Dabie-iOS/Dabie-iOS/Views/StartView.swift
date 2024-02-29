//
//  StartView.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//

import Lottie
import SnapKit
import Then
import UIKit

class StartView: UIView {
    var userCount = 0
    
    //MARK: - Views
    lazy var mainHeader = UIImageView().then {
        $0.image = UIImage(named: "mainHeader-x2")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var logoImage: LottieAnimationView = .init(name: "main_character")
    
    lazy var starBackground = UIImageView().then {
        $0.image = UIImage(named: "star_img")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var paperBackground = UIImageView().then {
        $0.image = UIImage(named: "paper_img")
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var startButton = UIButton().then {
        $0.backgroundColor = UIColor(hex: "#4C3220")
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 40
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    lazy var startText = UILabel().then {
        $0.text = "시작하기"
        $0.font = UIFont(name: "omyu pretty", size: 28)
        $0.textColor = UIColor(hex: "#FFFFFF")
    }
    
    lazy var userCountLabel = UILabel().then {
        $0.text = "현재까지 \(userCount)명이 참가했어요!"
        $0.font = UIFont(name: "omyu pretty", size: 16)
        $0.textColor = UIColor(hex: "#DEB79C")
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
        setUpMainLogo()
        setUpStartButton()
    }
    
    func setUpBackground() {
        
        let layer0 = CAGradientLayer()
        layer0.colors = [
            UIColor(hex: "#FFB479").cgColor,
            UIColor(hex: "#FBD0AE").cgColor
        ]
        layer0.frame = bounds
        layer.insertSublayer(layer0, at: 0)
    }
    
    func setUpMainHeader() {
        self.addSubview(mainHeader)
        mainHeader.snp.makeConstraints {
            $0.width.equalTo(282)
            $0.height.equalTo(84)
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            $0.centerX.equalToSuperview()
        }
    }
    
    func setUpMainLogo() {
        self.addSubview(paperBackground)
        self.addSubview(starBackground)
        self.addSubview(logoImage)
        
        logoImage.loopMode = .loop
        logoImage.animationSpeed = 0.8
        
        logoImage.snp.makeConstraints {
            $0.top.equalTo(mainHeader.snp.bottom).offset(35)
            $0.centerX.centerY.equalToSuperview()
        }
        
        logoImage.play()
        
        starBackground.snp.makeConstraints {
            $0.width.equalTo(350)
            $0.height.equalTo(450)
            $0.centerX.centerY.equalToSuperview()
        }
        paperBackground.snp.makeConstraints {
            $0.width.equalTo(400)
            $0.height.equalTo(450)
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    func setUpStartButton() {
        self.addSubview(startButton)
        self.addSubview(startText)
        self.addSubview(userCountLabel)
        
        startButton.snp.makeConstraints {
            $0.width.equalTo(345)
            $0.height.equalTo(85)
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
        
        startText.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).offset(-43)
        }
        
        userCountLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).offset(-13)
        }
    }
}
