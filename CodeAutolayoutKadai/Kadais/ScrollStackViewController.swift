//
//  ScrollStackViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class ScrollStackViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let stackView = setupScrollStackView()
        
        let texts = (0...100).compactMap { index in
            index.description + "番目ですよ"
        }
        setupLayout(stackView: stackView, texts: texts)
    }
    
    func setupScrollStackView() -> UIStackView {
        
        let scrollView = UIScrollView()
        
        self.view.addSubview(scrollView)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 30

        scrollView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
                
        let heightConst = stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        heightConst.priority = UILayoutPriority.defaultLow

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
            heightConst
        ])
        
        return stackView
    }
    
    func setupLayout(stackView: UIStackView, texts: [String]) {
        
        for text in texts {
            let label = UILabel()
            label.text = text
            label.textAlignment = NSTextAlignment.center
            label.numberOfLines = 1
            label.setContentHuggingPriority(UILayoutPriority.required, for: NSLayoutConstraint.Axis.vertical)
            stackView.addArrangedSubview(label)
            
            label.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                label.heightAnchor.constraint(equalToConstant: 100)
            ])
        }
    }
}
