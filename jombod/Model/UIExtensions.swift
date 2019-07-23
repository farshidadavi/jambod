//
//  UIExtentions.swift
//  Jambod
//
//  Created by Mohammad on 7/21/19.
//  Copyright © 2019 Pr0nE. All rights reserved.
//

import UIKit




extension UIImageView {
    
    convenience init(named:String,contentMode:UIImageView.ContentMode) {
        self.init(image: UIImage(named: named)?.withRenderingMode(.alwaysOriginal))
        self.contentMode = contentMode
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}



extension UIView {
    
    public func anchor(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        
        _ = anchorWithReturnAnchors(top, left: left, bottom: bottom, right: right, topConstant: topConstant, leftConstant: leftConstant, bottomConstant: bottomConstant, rightConstant: rightConstant, widthConstant: widthConstant, heightConstant: heightConstant)
    }
    
    public func anchorWithReturnAnchors(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> [NSLayoutConstraint] {
        translatesAutoresizingMaskIntoConstraints = false
        
        var anchors = [NSLayoutConstraint]()
        
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: topConstant))
        }
        
        if let left = left {
            anchors.append(leftAnchor.constraint(equalTo: left, constant: leftConstant))
        }
        
        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant))
        }
        
        if let right = right {
            anchors.append(rightAnchor.constraint(equalTo: right, constant: -rightConstant))
        }
        
        if widthConstant > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: widthConstant))
        }
        
        if heightConstant > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: heightConstant))
        }
        
        anchors.forEach({$0.isActive = true})
        
        return anchors
    }
    
    
    
    
}


extension UILabel {
    
    
    convenience init(str:String,color:UIColor,width:CGFloat,size:CGFloat,adjustWidth:Bool,aligment:NSTextAlignment,isBold:Bool){
        
        self.init()
        colounLbl(str: str, color: color, width: width, size: size, adjustWidth: adjustWidth, aligment: aligment, isBold: isBold)
        
    }
    
    func colounLbl(str:String,color:UIColor,width:CGFloat,size:CGFloat,adjustWidth:Bool,aligment:NSTextAlignment,isBold:Bool) {
        
        translatesAutoresizingMaskIntoConstraints = false
        let thefont = UIFont(name: isBold ? "IRANSansWeb-Bold" : "IRANSansWeb", size: size)
        let attributes = [NSAttributedString.Key.strokeWidth: -width, .strokeColor: color, .font: thefont!,.foregroundColor: color] as [NSAttributedString.Key : Any]
        attributedText = NSAttributedString(string: str, attributes: attributes)
        textAlignment = aligment
        adjustsFontSizeToFitWidth = adjustWidth
        
        
    }
    
}



extension UIColor {
    convenience init(r:CGFloat, g:CGFloat, b:CGFloat, alph:CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: alph)
    }
    
    convenience init(hexString: String){
        
        
        // Convert hex string to an integer
        let hexint = Int(UIColor().intFromHexString(hexStr: hexString))
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    func intFromHexString(hexStr: String) -> UInt32 {
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexStr)
        // Tell scanner to skip the # character
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        return hexInt
    }
}


extension UIButton{
    convenience init(title:String,selector:Selector,target:Any,backColor:UIColor = UIColor(r: 0, g: 66, b: 179, alph: 1),titleColor:UIColor = UIColor(r: 198, g: 207, b: 212, alph: 1)){
        self.init(type: .system)
        let att:[NSAttributedString.Key:Any] = [.font: UIFont(name: "IRANSansWeb", size: 12.5)!,.foregroundColor: titleColor ,.strokeWidth: 4]
        setAttributedTitle(NSAttributedString(string: title, attributes: att), for: .normal)
        backgroundColor = backColor
        addTarget(target, action: selector, for: .touchUpInside)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
