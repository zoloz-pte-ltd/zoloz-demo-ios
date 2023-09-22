//
//  SwiftEditTextUtils.swift
//  ZolozSaasExample
//
//  Created by ZouLu on 2023/9/4.
//

import Foundation
import UIKit

//永久存储对象
func kSetUserDefaults( udObject:String, key:String) {
    let defaults = UserDefaults.standard
    defaults.set(udObject, forKey:key)
    defaults.synchronize()
}

func kGetUserDefaults(key:String)->String{
    let defaults = UserDefaults.standard
    return defaults.string(forKey: key) ?? ""
}

@objc class SwiftEditTextUtils :NSObject{

    @objc public static func showAlert(on vc:UIViewController,with title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        DispatchQueue.main.async {
            vc.present(alert, animated: true, completion: nil)
        }
    }

    //UITextField
    @objc public static func createTextField(on rootView:UIView,with title:String, defaultTitle:String , index:Int)->UITextField{
        let label = UILabel(frame: CGRect(x: 5, y: 50 + 50 * index, width: 50, height: 30))
        label.text = title
        rootView.addSubview(label)
        
        let textField = UITextField(frame: CGRect(x: label.frame.origin.x + label.frame.size.width, y:  label.frame.origin.y, width: 250, height:  label.frame.size.height))
        textField.placeholder = title
        textField.borderStyle = .line;
        textField.layer.borderColor = UIColor.black.cgColor
        let saveValue = kGetUserDefaults(key: textField.placeholder!)
        textField.text = (saveValue.isEmpty == false) ? saveValue : defaultTitle;
        rootView.addSubview(textField)
        return textField;

    }
    
    @objc public static func getAndSave(textField:UITextField)->String{
        let value = textField.text
        if((value) != nil){
            kSetUserDefaults(udObject: value!, key: textField.placeholder!)
        }
        return value ?? ""
    }
    
    
}
