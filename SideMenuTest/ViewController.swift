//
//  ViewController.swift
//  SideMenuTest
//
//  Created by David Yoon on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {
    private var sideMenuViewControll: SideMenuViewController!
    
    private let testButton: UIButton = {
        let button = UIButton()
        button.setTitle("TEST", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setLayoutConstrains()
    }


    
    private func addSubviews() {
        view.addSubview(testButton)
    }
    
    private func setLayoutConstrains() {
        testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

