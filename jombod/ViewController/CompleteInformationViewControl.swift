//
//  ViewController.swift
//  jombod
//
//  Created by SourceKhone on 7/21/19.
//  Copyright © 2019 Farshid. All rights reserved.
//

import UIKit

class 	CompleteInformationViewControl: NavigationTypeViewController {
   
    let name = JombodTextField(placHolder: "نام و نام‌خانوادگی", size: 15)
    let email = JombodTextField(placHolder: "پست الکترونیکی", size: 15,placHolderAlignment: .right,mainTextAlignment: .left )
    let password = JombodTextField(placHolder: "گذرواژه", size: 15,mainTextAlignment: .left)
    let repeatPassword = JombodTextField(placHolder: "تکرار گذرواژه", size: 15,mainTextAlignment: .left)
    let finishButton = UIButton()
    let finishButtonLabel = UILabel()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(name)
        view.addSubview(email)
        view.addSubview(password)
        view.addSubview(repeatPassword)
        view.addSubview(finishButton)
        view.addSubview(finishButtonLabel)

        email.keyboardType = .emailAddress
        
        password.isSecureTextEntry = true
        repeatPassword.isSecureTextEntry = true
        name.anchor(navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 32, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        email.anchor(name.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        password.anchor(email.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        repeatPassword.anchor(password.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        finishButton.anchor(repeatPassword.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 25, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        finishButton.layer.cornerRadius = 4
        finishButton.backgroundColor = .init(hexString: "027335")
        finishButtonLabel.translatesAutoresizingMaskIntoConstraints = false
        finishButtonLabel.centerXAnchor.constraint(equalTo: finishButton.centerXAnchor).isActive = true
        finishButtonLabel.centerYAnchor.constraint(equalTo: finishButton.centerYAnchor).isActive = true
        finishButtonLabel.textColor = .white
        finishButtonLabel.text = "پایان ثبت‌نام"
        finishButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(finishButtonFunc)))

    }

    @objc func finishButtonFunc() {
        print("finish button touched")
    }

}

