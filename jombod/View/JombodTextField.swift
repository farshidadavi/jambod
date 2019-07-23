//
//  JombodTextField.swift
//  jombod
//
//  Created by SourceKhone on 7/22/19.
//  Copyright © 2019 Farshid. All rights reserved.
//

import UIKit

class JombodTextField: UITextField,UITextFieldDelegate {
    var leftt = false
    convenience init (placHolder:String,size:CGFloat,placHolderAlignment:NSTextAlignment = .right,mainTextAlignment:NSTextAlignment = .right){
        self.init()
        pHA = placHolderAlignment
        mTA = mainTextAlignment
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        textAlignment = .right
        let att:[NSAttributedString.Key:Any] = [.font: UIFont(name: "IRANSansWeb", size: size)!,.foregroundColor: UIColor(r: 166, g: 166, b: 166, alph: 1),.strokeWidth: -3.6]
        attributedPlaceholder = NSAttributedString(string: placHolder, attributes: att)
        delegate = self
    }
    
    var pHA:NSTextAlignment!
    var mTA:NSTextAlignment!
    enum TextFieldsType {
        
        case Default
        
    }
    
    var rightPadd:CGFloat = 15
    var type:TextFieldsType = .Default
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.count > 0 {
        textAlignment = text!.count + 1 > 0 ? mTA : pHA
        }else {
            textAlignment = text!.count - 1 > 0 ? mTA : pHA
        }
        textField.typingAttributes![NSAttributedString.Key.font] = UIFont(name: "IRANSansWeb", size: 14)
        textField.typingAttributes![NSAttributedString.Key.strokeWidth] = -2.6
        textField.typingAttributes![NSAttributedString.Key.foregroundColor] = UIColor(r: 92, g: 92, b: 92, alph: 1)
        return true
    }// return NO to not change text

    var pading:UIEdgeInsets {
        
        return UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        
            return bounds.inset(by: pading)

    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: pading)
      
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        
            return bounds.inset(by: pading)
   
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        layer.borderColor = UIColor.red.cgColor
        layer.borderWidth = 0
        attributedPlaceholder = NSAttributedString(string: placeholder!,
                                                   attributes: [.font: UIFont(name: "IRANSansWeb", size: 15)!,.foregroundColor: UIColor.black,.strokeWidth: -2.6])
        
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        layer.borderColor = UIColor(hexString: "A4A4A4").cgColor
        
        attributedPlaceholder = NSAttributedString(string: placeholder!,
                                                   attributes: [.font: UIFont(name: "IRANSansWeb", size: 15)!,.foregroundColor: UIColor(hexString: "A4A4A4"),.strokeWidth: -2.6])
    }
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        
        return CGRect(x: 12, y: bounds.height/2 - 8, width: 20, height: 20)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 4
        layer.borderColor = UIColor(hexString: "A4A4A4").cgColor
        layer.borderWidth = 1
        textColor = .black
        for subview in subviews {
            if let label = subview as? UILabel {
                label.minimumScaleFactor = 0.3
                label.adjustsFontSizeToFitWidth = true
            }
        }
    }
    
}
