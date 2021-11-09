//
//  ViewController.swift
//  SideMenuTest
//
//  Created by David Yoon on 2021/11/09.
//

import UIKit

class ViewController: UIViewController {
    private var sideMenuViewControll: SideMenuViewController!
    private let sideMenuRevealWidth:CGFloat = 260
    private let paddingForRotation:CGFloat = 150
    private var revealSideMenuOnTop:Bool = false
    private var sideMenuTrailingConstraint:NSLayoutConstraint!
    
    private let testButton: UIButton = {
        let button = UIButton()
        button.setTitle("TEST", for: .normal)
        button.addTarget(self, action: #selector(callSideMenu), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
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
        
        sideMenuViewControll = SideMenuViewController()
        
        sideMenuViewControll.view.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.insertSubview(sideMenuViewControll.view, at: self.revealSideMenuOnTop ? 2:0 )
        addChild(sideMenuViewControll)
        didMove(toParent: sideMenuViewControll)
        if revealSideMenuOnTop {
            sideMenuTrailingConstraint = sideMenuViewControll.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -sideMenuRevealWidth - paddingForRotation)
            sideMenuTrailingConstraint.isActive = true
            sideMenuViewControll.view.widthAnchor.constraint(equalToConstant: sideMenuRevealWidth).isActive = true
            sideMenuViewControll.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            sideMenuViewControll.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            
        }
        
        sideMenuViewControll.view.widthAnchor.constraint(equalToConstant: sideMenuRevealWidth).isActive = true
        sideMenuViewControll.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        sideMenuViewControll.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
    }
    
    
    
    
    @objc private func callSideMenu() {
        //sideMenuViewControll = SideMenuViewController()
        //present(sideMenuViewControll, animated: true, completion: nil)
        revealSideMenuOnTop = !revealSideMenuOnTop
        print("revealSideMenuOnTop : \(revealSideMenuOnTop)")
    }
}

