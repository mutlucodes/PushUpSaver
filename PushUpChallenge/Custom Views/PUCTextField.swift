//
//  PUCTextField.swift
//  PushUpChallenge
//
//  Created by Mutlu Aydin on 9/28/22.
//  Copyright © 2022 Mutlu Aydin. All rights reserved.
//

import UIKit

class PUCTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textFieldConfigure()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func textFieldConfigure() {
        translatesAutoresizingMaskIntoConstraints = false

        textColor = UIColor(named: AppColors.textColor)
        tintColor = UIColor(named: AppColors.textColorH)
        layer.cornerRadius = 10
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 10
        returnKeyType = .done
        keyboardType = .asciiCapableNumberPad
        
        backgroundColor = UIColor(named: AppColors.buttonColor)
        autocorrectionType = .no
        setDoneOnKeyboard()
        
        placeholder = "0"
        
        
    }
    
    func setDoneOnKeyboard() {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.dismissKeyboard))
        keyboardToolbar.items = [flexBarButton, doneBarButton]
        inputAccessoryView = keyboardToolbar
    }

    @objc func dismissKeyboard() {
        self.endEditing(true)
    }

}
