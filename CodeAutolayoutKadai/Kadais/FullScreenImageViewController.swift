//
//  ViewController.swift
//  CodeAutolayoutKadai
//
//  Created by sakiyamaK on 2024/06/02.
//

import UIKit

class FullScreenImageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let imageView = UIImageView()
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.image = UIImage(resource: ImageResource.test)
        
        self.view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint: NSLayoutConstraint = imageView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let leadingConstraint: NSLayoutConstraint = imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingConstraint: NSLayoutConstraint = imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let bottomConstraint: NSLayoutConstraint = imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        
        let constraints: [NSLayoutConstraint] = [
            topConstraint, leadingConstraint, trailingConstraint, bottomConstraint
        ]

        NSLayoutConstraint.activate(constraints)
    }
}

