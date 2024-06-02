//
//  PinchImageViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class PagingViewController: UIViewController {
    
    private weak var scrollView: UIScrollView!
    private weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        setupScrollStakView()
        setupLayout(page: 10)
    }
    
    func setupScrollStakView() {
        let scrollView = UIScrollView()
        scrollView.isPagingEnabled = true

        self.view.addSubview(scrollView)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.horizontal

        scrollView.addSubview(stackView)
        
        self.scrollView = scrollView
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // 横幅はこれから追加するUILabelの数に応じて決まるが0個の時のために念の為、制約を用意しておく
        // 優先順位を下げるのがコツ
        let widthConst = stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
        widthConst.priority = UILayoutPriority.defaultLow
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor),
            widthConst
        ])
        
        self.stackView = stackView
    }
    
    func setupLayout(page: Int) {
        
        for index in 0..<page {
            let label = UILabel()
            label.text = index.description
            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.numberOfLines = 1
            label.textAlignment = .center
                        
            stackView.addArrangedSubview(label)

            label.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                label.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
                label.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor)
            ])
        }
    }
}
