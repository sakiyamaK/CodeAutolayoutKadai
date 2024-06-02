//
//  TopLabelViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class TopLabelViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel()
        label.text = "ラベルです"
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        label.setContentHuggingPriority(UILayoutPriority.required, for: NSLayoutConstraint.Axis.vertical)
        
        self.view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let heightConst = label.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5)
        heightConst.priority = UILayoutPriority.defaultHigh

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            heightConst
        ])
    }
}
