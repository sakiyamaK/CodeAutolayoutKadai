//
//  CenterButtonViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class CenterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let button = UIButton()
        button.setTitle("ボタン", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)        
        button.addAction(UIAction(handler: { _ in
            print("タップしたよ")
        }), for: UIControl.Event.touchUpInside)
        
        self.view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}

