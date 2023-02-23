//
//  HomeViewController.swift
//  FirstTuist
//
//  Created by Jaewon Yun on 2023/02/23.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private lazy var helloLabel: UILabel = {
        let label: UILabel = .init()
        label.text = "Hello, World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(helloLabel)
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(helloLabel.bounds)
    }
}
