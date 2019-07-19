//
//  ViewController.swift
//  SwiftiOSLocalizationLanguage
//
//  Created by Nazmul on 19/7/19.
//  Copyright © 2019 Nazmul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        setupUIContent()
    }

    
    let titleLabel : UILabel = {
        let lb = UILabel()
        lb.textColor = UIColor.red
        lb.backgroundColor = UIColor.darkGray
        lb.font = UIFont.boldSystemFont(ofSize: 30)
        lb.textAlignment = .center
        lb.translatesAutoresizingMaskIntoConstraints = false
        
        return lb
    }()
    
    var setArabicButton : UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(changeLanguageARBtnAction), for: .touchUpInside)
         button.backgroundColor = UIColor.green
        return button
    }()
    
    var setSpanishButton : UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(changeLanguageARBtnAction), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        return button
    }()
    
    var setEnglishButton : UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(changeLanguageARBtnAction), for: .touchUpInside)
        button.backgroundColor = UIColor.orange
        return button
    }()
    
    @objc func changeLanguageARBtnAction(){
        
    }
    
    func setupView(){
       self.view.addSubview(titleLabel)
       self.view.addSubview(setArabicButton)
       self.view.addSubview(setSpanishButton)
       self.view.addSubview(setEnglishButton)
        
        titleLabel.anchor(self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, topConstant: 100, leftConstant: 10, bottomConstant: 0, rightConstant: 10, widthConstant: 0, heightConstant: 40)
        
        setArabicButton.anchor(nil, left: self.view.leftAnchor, bottom: self.setSpanishButton.topAnchor, right: self.view.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 20, rightConstant: 20, widthConstant: 0, heightConstant: 44)
        setSpanishButton.anchor(nil, left: self.view.leftAnchor, bottom: self.setEnglishButton.topAnchor, right: self.view.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 20, rightConstant: 20, widthConstant: 0, heightConstant: 44)
        setEnglishButton.anchor(nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 50, rightConstant: 20, widthConstant: 0, heightConstant: 44)
    }
    
    func setupUIContent(){
        //TODO
    }
}

