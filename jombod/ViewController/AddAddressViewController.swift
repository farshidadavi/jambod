//
//  AddAddressViewController.swift
//  jombod
//
//  Created by SourceKhone on 7/23/19.
//  Copyright © 2019 Farshid. All rights reserved.
//

import UIKit

class AddAddressViewController: NavigationTypeViewController,UITextViewDelegate {

    let mostatil = UIView()
    let label = UILabel(str: "لطفاً آدرس دقیق خود را وارد کنید", color: .black, width: 5, size: 17, adjustWidth: false, aligment: .right, isBold: false)
    let cityName = JombodTextField(placHolder: "نام شهر", size: 15)
    let phoneNumber = JombodTextField(placHolder: "شماره همراه", size: 15,placHolderAlignment: .right,mainTextAlignment: .left)
    let address = UITextView()

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "آدرس" {
            textView.text = ""
            textView.textColor = UIColor.black
        }
        
        //            if self.view.frame.origin.y == 0{
        //
        //                UIView.animate(withDuration: 0.3) {
        //                    self.view.frame.origin.y -= (self.keyboardSize?.height ?? 50)
        //                }
        //
        //            }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = "آدرس"
            textView.textColor = UIColor.lightGray            }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mostatil)
        view.addSubview(label)
        view.addSubview(cityName)
        view.addSubview(phoneNumber)
        view.addSubview(address)
        address.delegate = self
        
        
        mostatil.anchor(navigationBar.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 66)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: mostatil.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: mostatil.centerYAnchor).isActive = true
        cityName.anchor(mostatil.bottomAnchor, left: nil, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: (UIScreen.main.bounds.width - 57)/2, heightConstant: 35)
        phoneNumber.anchor(mostatil.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 21, bottomConstant: 0, rightConstant: 0, widthConstant: (UIScreen.main.bounds.width - 57)/2, heightConstant: 35)
        address.anchor(cityName.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 14, leftConstant: 21, bottomConstant: 0, rightConstant: 21, widthConstant: 0, heightConstant:89)
        phoneNumber.keyboardType = .phonePad
        let thefont = UIFont(name:  "IRANSansWeb", size: 17)
        let attributes = [NSAttributedString.Key.strokeWidth: -3.6, .strokeColor: UIColor.lightGray, .font: thefont!,.foregroundColor: UIColor.lightGray] as [NSAttributedString.Key : Any]
        address.attributedText = NSAttributedString(string: "آدرس", attributes: attributes)
        address.textAlignment = .right
        address.layer.borderColor = UIColor.lightGray.cgColor
        address.layer.borderWidth = 1
        address.layer.cornerRadius = 4
    }
    
    


}
