//
//  SoundView.swift
//  Xylophone
//
//  Created by Miyoshi Masataka on 2018/03/04.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class SoundView: UIView {
    
    let redButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .red
        button.tag = 1
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let orangeButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .orange
        button.tag = 2
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let yellowButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .yellow
        button.tag = 3
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let greenButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .green
        button.tag = 4
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let blueButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .blue
        button.tag = 5
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let purpleButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .purple
        button.tag = 6
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let blackButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = .black
        button.tag = 7
        button.addTarget(self, action: #selector(ViewController.noteButtonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // add views
        [redButton, orangeButton, yellowButton, greenButton, blueButton, purpleButton, blackButton].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // layout
    override func layoutSubviews() {
        
        redButton.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: self.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
        orangeButton.anchor(
            top: redButton.bottomAnchor,
            leading: redButton.leadingAnchor,
            bottom: nil,
            trailing: redButton.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
        yellowButton.anchor(
            top: orangeButton.bottomAnchor,
            leading: orangeButton.leadingAnchor,
            bottom: nil,
            trailing: orangeButton.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
        greenButton.anchor(
            top: yellowButton.bottomAnchor,
            leading: yellowButton.leadingAnchor,
            bottom: nil,
            trailing: yellowButton.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
        blueButton.anchor(
            top: greenButton.bottomAnchor,
            leading: greenButton.leadingAnchor,
            bottom: nil,
            trailing: greenButton.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
        purpleButton.anchor(
            top: blueButton.bottomAnchor,
            leading: blueButton.leadingAnchor,
            bottom: nil,
            trailing: blueButton.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
        blackButton.anchor(
            top: purpleButton.bottomAnchor,
            leading: purpleButton.leadingAnchor,
            bottom: nil,
            trailing: purpleButton.trailingAnchor,
            constant: .init(top: 5, left: 5, bottom: 5, right: 5),
            size: .init(width: 0, height: self.frame.size.height / 8)
        )
        
    }

}














