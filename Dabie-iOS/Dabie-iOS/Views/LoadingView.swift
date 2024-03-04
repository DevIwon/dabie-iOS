//
//  LoadingView.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/02/13.
//
import Lottie
import UIKit

class LoadingView: UIView {
    
    //MARK: - Views
    lazy var loadingText: LottieAnimationView = .init(name: "loading")
    
    lazy var loadingImage = UIImageView().then {
        $0.image = UIImage(named: "balloon_character")
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
        setUpLoadingImage()
    }
    
    func setUpBackground() {
        layer.backgroundColor = UIColor(hex: "#FBD0AE").cgColor
    }

    func setUpLoadingImage() {
        self.addSubview(loadingText)
        self.addSubview(loadingImage)
        
        loadingImage.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
        loadingText.loopMode = .loop
        loadingText.animationSpeed = 2
        
        loadingText.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(loadingImage.snp.bottom).offset(30)
        }
        
        loadingText.play()
        
    }
}
