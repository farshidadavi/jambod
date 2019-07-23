//
//  DefaultViewController.swift
//  jombod
//
//  Created by SourceKhone on 7/21/19.
//  Copyright © 2019 Farshid. All rights reserved.
//

import UIKit

class NavigationTypeViewController: UIViewController {
    convenience init(title:String,bottomTitle:String,backTitle:String,hasBackButtonBar:Bool,hasButtomBar:Bool,colorButtomBar:Bool){
        self.init()
        backButtonLabel = UILabel(str: backTitle, color: .white, width: 8	, size: 15, adjustWidth: false, aligment: .right, isBold: false)
        titleLabel = UILabel(str: title, color: .white, width: 7, size: 15, adjustWidth: false, aligment: .right, isBold: false)
        bottomTitleLabel = UILabel(str: bottomTitle, color: .black, width: 5, size: 12, adjustWidth: false, aligment: .right, isBold: false)
        moraba.isHidden = !hasBackButtonBar
        backButtonLabel.isHidden = !hasBackButtonBar
        bottomBar.isHidden = !hasButtomBar
        colorr = colorButtomBar
    }
    var colorr = true
    let bottomBar = UIView()
    let backAreaTouch = UIView()
    
    let navigationBar = UIView()
    let moraba = UIImageView(named: "RightArr", contentMode: .scaleAspectFit)
    
    var backButtonLabel:UILabel!
    var titleLabel:UILabel!
    var bottomTitleLabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(navigationBar)
        navigationBar.backgroundColor = .init(hexString: "083316")
        navigationBar.translatesAutoresizingMaskIntoConstraints = false
        navigationBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        navigationBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        navigationBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navigationBar.heightAnchor.constraint(equalToConstant: 72).isActive = true

        view.addSubview(bottomBar)
        if colorr{
            bottomBar.backgroundColor = .init(hexString: "A4CF37")
        }else{
            bottomBar.backgroundColor = .init(hexString: "B4B4B4")
        }
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        bottomBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bottomBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bottomBar.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        navigationBar.addSubview(titleLabel)
        titleLabel.anchor(navigationBar.topAnchor, left: nil, bottom: nil, right: nil, topConstant: 34, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        titleLabel.centerXAnchor.constraint(equalTo: navigationBar.centerXAnchor).isActive = true
        
        bottomBar.addSubview(bottomTitleLabel)
        bottomTitleLabel.centerXAnchor.constraint(equalTo: bottomBar.centerXAnchor).isActive = true
        bottomTitleLabel.centerYAnchor.constraint(equalTo: bottomBar.centerYAnchor).isActive = true
        navigationBar.addSubview(moraba)
        moraba.anchor(nil, left: nil, bottom: nil, right: navigationBar.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 11, widthConstant: 23, heightConstant: 23)
        moraba.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        navigationBar.addSubview(backButtonLabel)
        backButtonLabel.anchor(nil, left: nil, bottom: nil, right: navigationBar.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 37, widthConstant: 0, heightConstant: 0)
        backButtonLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        navigationBar.addSubview(backAreaTouch)
        backAreaTouch.translatesAutoresizingMaskIntoConstraints = false
        backAreaTouch.rightAnchor.constraint(equalTo: moraba.rightAnchor).isActive = true
        backAreaTouch.leftAnchor.constraint(equalTo: backButtonLabel.leftAnchor).isActive = true
        backAreaTouch.topAnchor.constraint(equalTo: moraba.topAnchor).isActive = true
        backAreaTouch.bottomAnchor.constraint(equalTo: moraba.bottomAnchor).isActive = true
        backAreaTouch.isUserInteractionEnabled = true
        backAreaTouch.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchBackButton)))
        bottomBar.isUserInteractionEnabled = true
        bottomBar.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchBottomBar)))
    }
    
    @objc func touchBackButton() {
        print("Touched successfuly back button")
    }
    @IBAction func touchBottomBar() {
        print("Touched successfuly bottom bar")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    


}
