//
//  AlertView.swift
//  Dabie-iOS
//
//  Created by 서원진 on 2024/03/04.
//
import SnapKit
import UIKit


class AlertView: UIView {
    //MARK: - Views
    
    lazy var titleLabel = UILabel().then  {
        $0.text = "알림"
        $0.font = UIFont(name: "omyu pretty", size: 24)
        $0.textAlignment = .center
    }
    
    lazy var messageLabel = UILabel().then {
        $0.text = "아무것도 적지 않았다비~"
        $0.font = UIFont(name: "omyu pretty", size: 20)
        $0.textAlignment = .center
    }
    
    lazy var confirmButton = UIButton().then {
        $0.backgroundColor = UIColor(hex: "#4C3220")
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 10
        $0.setTitle("확인", for: .normal)
        $0.titleLabel?.font = UIFont(name: "omyu pretty", size: 24)
    }
    
    lazy var containerView = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 20
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
    func setup() {
        layer.backgroundColor = UIColor.black.withAlphaComponent(0.5).cgColor
        self.addSubview(containerView)
        
        containerView.addSubview(titleLabel)
        containerView.addSubview(messageLabel)
        containerView.addSubview(confirmButton)
        
        containerView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
            $0.width.equalTo(300)
            $0.height.equalTo(200)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(containerView).offset(20)
            $0.leading.trailing.equalTo(containerView).inset(20)
        }
        
        messageLabel.snp.makeConstraints {
            $0.centerX.centerY.equalTo(containerView)
        }
        
        confirmButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.bottom.equalTo(containerView).offset(-20)
            $0.centerX.equalTo(containerView)
        }
    }
}
