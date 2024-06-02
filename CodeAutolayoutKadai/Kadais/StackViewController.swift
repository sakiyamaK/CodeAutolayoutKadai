//
//  StackViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class StackViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let stackView = setupStackView()
        setupLayout(stackView: stackView)
    }
    
    func setupStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 30

        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        return stackView
    }
    
    func setupLayout(stackView: UIStackView) {
        
        let imageView = UIImageView()
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.image = UIImage(resource: ImageResource.test)
        imageView.translatesAutoresizingMaskIntoConstraints = false

        let button = UIButton()
        button.setTitle("ボタン", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.backgroundColor = .systemBlue
        button.addAction(UIAction(handler: { _ in
            print("タップしたよ")
        }), for: UIControl.Event.touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(button)
    }
}
