//
//  SecondViewController.swift
//  UINavigationViewController
//
//  Created by Муслим Курбанов on 21.05.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let thisNameLabel = UILabel()
    let thisSurnameLabel = UILabel()
    
    let nameLabel = UILabel()
    let surnameLabel = UILabel()
    
    var nameText: String = ""
    var surnameText: String = ""
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = ""
        
        
        labelSettings()
        nameLabel.text = nameText
        surnameLabel.text = surnameText
    
        
        // Do any additional setup after loading the view.
    }
    
    func labelSettings() {
           
        button.setTitle("Relogin", for: .normal)
        button.tintColor = UIColor.white
        button.backgroundColor = #colorLiteral(red: 0, green: 0.6470588235, blue: 0.168627451, alpha: 1)
        button.frame = CGRect(x: 0, y: 500, width: 100, height: 100)
        button.center.x = view.center.x
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonBackAction), for: .touchUpInside)
        view.addSubview(button)
        
        thisNameLabel.text = "Добро пожаловать"
        thisNameLabel.textColor = UIColor.black
        thisNameLabel.frame = CGRect(x: 0, y: 50, width: 200, height: 100)
        thisNameLabel.textAlignment = NSTextAlignment.center
        thisNameLabel.center.x = self.view.center.x
        view.addSubview(thisNameLabel)
        
        nameLabel.textColor = UIColor.black
        nameLabel.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.center.x = self.view.center.x
        view.addSubview(nameLabel)
        
        surnameLabel.textColor = UIColor.black
        surnameLabel.frame = CGRect(x: 0, y: 200, width: 100, height: 100)
        surnameLabel.textAlignment = NSTextAlignment.center
        surnameLabel.center.x = self.view.center.x
        view.addSubview(surnameLabel)
        
        
        
        
        
    }
    
    @objc func buttonBackAction() {
        
        let viewController = ViewController()
        navigationController?.pushViewController(viewController, animated: true)
        print(UserSettings.userName)
    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(true)
//
//    }
    
    
}
