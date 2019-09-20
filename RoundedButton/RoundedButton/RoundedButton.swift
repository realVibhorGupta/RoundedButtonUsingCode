//
//  RoundedButton.swift
//  RoundedButton
//
//  Created by Vibhor Gupta on 2/16/18.
//  Copyright © 2018 Vibhor Gupta. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {


    override init(frame: CGRect) {
        super.init(frame: frame)

        self.addSubview(sendButton)

        sendButton.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        sendButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sendButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        sendButton.heightAnchor.constraint(equalTo: heightAnchor ).isActive = true

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

     let  sendButton : UIButton  = {
        let button =  UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send", for: .normal)
        button.tintColor = UIColor.green
        button.addTarget(self, action: #selector(handlePlay), for: .touchUpInside)
        return button
    }()

    @objc private func handlePlay(){

    }

}
