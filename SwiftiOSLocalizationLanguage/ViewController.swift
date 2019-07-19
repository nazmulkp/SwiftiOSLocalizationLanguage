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
        lb.textColor = UIColor.white
        lb.backgroundColor = UIColor.darkGray
        lb.font = UIFont.boldSystemFont(ofSize: 40)
        lb.numberOfLines  = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        
        return lb
    }()
    
    let detailsLabel : UILabel = {
        let lb = UILabel()
        lb.textColor = UIColor.white
        lb.backgroundColor = UIColor.darkGray
        lb.font = UIFont.systemFont(ofSize: 25)
        lb.numberOfLines  = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        
        return lb
    }()
    
    let currentLanguageInfoLabel : UILabel = {
        let lb = UILabel()
        lb.textColor = UIColor.red
        lb.backgroundColor = UIColor.darkGray
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.numberOfLines  = 0
        lb.translatesAutoresizingMaskIntoConstraints = false
        
        return lb
    }()
    
    lazy var setArabicButton : UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(setArabicBtnAction), for: .touchUpInside)
        button.backgroundColor = UIColor.brown
        return button
    }()
    
    @objc func setArabicBtnAction(){
        setupUpdateView(languageCode: "ar")
    }
    
    lazy var setSpanishButton : UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(setSpanishBtnAction), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        return button
    }()
    
    @objc func setSpanishBtnAction(){
        setupUpdateView(languageCode: "es")
    }
    
    lazy var setEnglishButton : UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(setEnglishBtnAction), for: .touchUpInside)
        button.backgroundColor = UIColor.orange
        return button
    }()
    
    @objc func setEnglishBtnAction(){
        setupUpdateView(languageCode: "en")
    }
    
    func setupUpdateView(languageCode code: String){
        LocalizationSystem.sharedInstance.setLanguage(languageCode: code)
        UIView.appearance().semanticContentAttribute =  code == "ar" ? .forceRightToLeft :  .forceLeftToRight
        let app = UIApplication.shared.delegate as? AppDelegate
        app?.window?.rootViewController = ViewController()
    }
    
    func setupView(){
        self.view.backgroundColor = UIColor.darkGray
        self.view.addSubview(titleLabel)
        self.view.addSubview(detailsLabel)
        self.view.addSubview(currentLanguageInfoLabel)
        self.view.addSubview(setArabicButton)
        self.view.addSubview(setSpanishButton)
        self.view.addSubview(setEnglishButton)
        
        titleLabel.anchor(self.view.topAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, topConstant: 80, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 0)
        detailsLabel.anchor(self.titleLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, topConstant: 30, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 0)
        currentLanguageInfoLabel.anchor(self.detailsLabel.bottomAnchor, left: self.view.leftAnchor, bottom: nil, right: self.view.rightAnchor, topConstant: 30, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 0)
        
        setArabicButton.anchor(nil, left: self.view.leftAnchor, bottom: self.setSpanishButton.topAnchor, right: self.view.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 20, rightConstant: 20, widthConstant: 0, heightConstant: 44)
        setSpanishButton.anchor(nil, left: self.view.leftAnchor, bottom: self.setEnglishButton.topAnchor, right: self.view.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 20, rightConstant: 20, widthConstant: 0, heightConstant: 44)
        setEnglishButton.anchor(nil, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 50, rightConstant: 20, widthConstant: 0, heightConstant: 44)
    }
    
    func setupUIContent(){
        titleLabel.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "home_title", comment: "")
        detailsLabel.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "details", comment: "")
        currentLanguageInfoLabel.text = LocalizationSystem.sharedInstance.getLanguage()
        setArabicButton.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "btn_Ar_lng", comment: ""), for: .normal)
        setSpanishButton.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "btn_spanish_lng", comment: ""), for: .normal)
        setEnglishButton.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "btn_eng_lng", comment: ""), for: .normal)
        
        
    }
}

