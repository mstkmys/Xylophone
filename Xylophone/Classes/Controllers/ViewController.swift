//
//  ViewController.swift
//  Xylophone
//
//  Created by Miyoshi Masataka on 2018/03/03.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let soundView: SoundView = {
       
        let soundView = SoundView(frame: UIScreen.main.bounds)
        soundView.backgroundColor = .white
        
        return soundView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [soundView].forEach{ self.view.addSubview($0) }
        
    }
    
    // MARK: Actions
    
    @objc func redButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func orageButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func yellowButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func greenButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func blueButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func purpleButtonTapped(_ sender: UIButton) {
        
    }
    
    @objc func blackButtonTapped(_ sender: UIButton) {
        
    }

}









