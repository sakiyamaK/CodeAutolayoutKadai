//
//  TiktokViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class TiktokViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setupImageViewLayout()
        setupTopView()
        setupBottomRightView()
    }
    
    func setupImageViewLayout() {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(resource: .test)
        
        self.view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    
    func setupTopView() {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 30
        
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        ])
        
        let leftLabel = UILabel()
        leftLabel.text = "Following"
        leftLabel.textColor = .systemGray
        leftLabel.font = .boldSystemFont(ofSize: 20)
        leftLabel.setContentHuggingPriority(.required, for: .vertical)
        leftLabel.setContentHuggingPriority(.required, for: .horizontal)
        
        stackView.addArrangedSubview(leftLabel)

        let rightLabel = UILabel()
        rightLabel.text = "For You"
        leftLabel.textColor = .white
        rightLabel.font = UIFont.boldSystemFont(ofSize: 20)
        rightLabel.setContentHuggingPriority(.required, for: .vertical)
        rightLabel.setContentHuggingPriority(.required, for: .horizontal)
        
        stackView.addArrangedSubview(rightLabel)
    }
    
    func setupBottomRightView() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -12),
            stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -12)
        ])
        
        let imageSystemNames: [String] = [
            "trash",
            "arrowshape.turn.up.right",
            "ellipsis.bubble",
            "heart",
            
        ]
        
        for imageSystemName in imageSystemNames {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit
            imageView.tintColor = .white
            imageView.image = UIImage(systemName: imageSystemName)
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalToConstant: 60),
                imageView.heightAnchor.constraint(equalToConstant: 60),
            ])
            
            stackView.addArrangedSubview(imageView)
        }
    }    
}

#Preview {
    TiktokViewController()
}
