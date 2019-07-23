//
//  ChangePassword.swift
//  jombod
//
//  Created by SourceKhone on 7/22/19.
//  Copyright © 2019 Farshid. All rights reserved.
//

import UIKit

class ChangePasswordViewController: NavigationTypeViewController {
    let currentPassword = JombodTextField(placHolder: "گذرواژه‌ی فعلی", size: 15,mainTextAlignment: .left)
    let newPassword = JombodTextField(placHolder: "گذرواژه‌ی جدید", size: 15,mainTextAlignment: .left)
    let repeatNewPassword = JombodTextField(placHolder: "تکرار گذرواژه‌ی جدید", size: 15,mainTextAlignment: .left)
    let apllyChangesButton = UIButton()
    let apllyChangesButtonLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(currentPassword)
        view.addSubview(newPassword)
        view.addSubview(repeatNewPassword)
        view.addSubview(apllyChangesButton)
        view.addSubview(apllyChangesButtonLabel)
        currentPassword.isSecureTextEntry = true
        newPassword.isSecureTextEntry = true
        repeatNewPassword.isSecureTextEntry = true
        currentPassword.anchor(navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 32, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        newPassword.anchor(currentPassword.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        repeatNewPassword.anchor(newPassword.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        apllyChangesButton.anchor(repeatNewPassword.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 25, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        apllyChangesButton.layer.cornerRadius = 4
        apllyChangesButton.backgroundColor = .init(hexString: "027335")
        apllyChangesButtonLabel.translatesAutoresizingMaskIntoConstraints = false
        apllyChangesButtonLabel.centerXAnchor.constraint(equalTo: apllyChangesButton.centerXAnchor).isActive = true
        apllyChangesButtonLabel.centerYAnchor.constraint(equalTo: apllyChangesButton.centerYAnchor).isActive = true
        apllyChangesButtonLabel.textColor = .white
        apllyChangesButtonLabel.text = "اعمال تغییرات"
        apllyChangesButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(apllyChangesButtonFunc)))
        
    }
    
    @objc func apllyChangesButtonFunc() {
        print("Aplly change button touched")
    }

}
