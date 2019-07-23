//
//  ViewController.swift
//  jombod
//
//  Created by SourceKhone on 7/21/19.
//  Copyright © 2019 Farshid. All rights reserved.
//

import UIKit

class     ChangePersonalInformationViewController: NavigationTypeViewController {
    
    let name = JombodTextField(placHolder: "اردلان نیک اندیش", size: 15)
    let phoneNumber = JombodTextField(placHolder: "۰۹۱۳۷۹۶۹۴۸۷", size: 15,placHolderAlignment: .left,mainTextAlignment: .left)
    let email = JombodTextField(placHolder: "Ardalan@example.com", size: 15,placHolderAlignment: .left,mainTextAlignment: .left)
    let sex = JombodTextField(placHolder: "جنسیت", size: 15)
    let birthDate = JombodTextField(placHolder: "تاریخ تولد", size: 15)
    let apllyChangesButton = UIButton()
    let apllyChangesButtonLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(name)
        view.addSubview(email)
        view.addSubview(phoneNumber)
        view.addSubview(sex)
        view.addSubview(birthDate)
        view.addSubview(apllyChangesButton)
        view.addSubview(apllyChangesButtonLabel)
        
        phoneNumber.keyboardType = .phonePad
        email.keyboardType = .emailAddress
        
        name.anchor(navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 32, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        phoneNumber.anchor(name.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        email.anchor(phoneNumber.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        sex.anchor(email.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        birthDate.anchor(sex.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 11, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        apllyChangesButton.anchor(birthDate.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 25, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant: 44)
        
        apllyChangesButton.layer.cornerRadius = 4
        apllyChangesButton.backgroundColor = .init(hexString: "027335")
        apllyChangesButtonLabel.translatesAutoresizingMaskIntoConstraints = false
        apllyChangesButtonLabel.centerXAnchor.constraint(equalTo: apllyChangesButton.centerXAnchor).isActive = true
        apllyChangesButtonLabel.centerYAnchor.constraint(equalTo: apllyChangesButton.centerYAnchor).isActive = true
        apllyChangesButtonLabel.textColor = .white
        apllyChangesButtonLabel.text = "اعمال تغییرات"
        apllyChangesButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(apllyChangesButtonFunc)))
        email.textAlignment = .left
        phoneNumber.textAlignment = .left
        
    }
    
    @objc func apllyChangesButtonFunc() {
        print("Aplly change button touched")
    }


}

