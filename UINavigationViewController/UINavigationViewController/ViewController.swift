//
//  ViewController.swift
//  UINavigationViewController
//
//  Created by Муслим Курбанов on 20.05.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameTextField = UITextField()
    var surnameTextField = UITextField()
    var displaySecondButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Авторизация"
        
        nameTextField.frame = CGRect(x: 90, y: 100, width: 200, height: 31)
        nameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        nameTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        nameTextField.textAlignment = .center
        nameTextField.placeholder = "Введите имя"
        view.addSubview(self.nameTextField)
        
        surnameTextField.frame = CGRect(x: 90, y: 200, width: 200, height: 31)
        surnameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        surnameTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        surnameTextField.textAlignment = .center
        surnameTextField.placeholder = "Введите фамилию"
        view.addSubview(self.surnameTextField)
        
        self.displaySecondButton = UIButton(type: .roundedRect)
        self.displaySecondButton.setTitle("Подтвердить", for: .normal)
        self.displaySecondButton.backgroundColor = #colorLiteral(red: 0, green: 0.6470588235, blue: 0.168627451, alpha: 1)
        self.displaySecondButton.tintColor = UIColor.white
        self.displaySecondButton.sizeToFit()
        self.displaySecondButton.frame = CGRect(x: 0, y: 500, width: 100, height: 100)
        self.displaySecondButton.center.x = view.center.x
        self.displaySecondButton.layer.cornerRadius = 10
        self.displaySecondButton.addTarget(self, action: #selector(performDisplaySecondVC), for: .touchUpInside)
        self.view.addSubview(displaySecondButton)
        
        if UserSettings.userName != "" {
            
        }
        // Do any additional setup after loading the view.
    }

    @objc func performDisplaySecondVC(parametrSender: Any) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        secondVC.nameText = nameTextField.text ?? "no value"
        secondVC.surnameText = surnameTextField.text ?? "no value"
        UserSettings.userName = nameTextField.text
        UserSettings.userSurname = surnameTextField.text
        print(UserSettings.userName)
        print(UserSettings.userSurname)
        
        
    }

}

