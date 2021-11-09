//
//  SideMenuViewController.swift
//  SideMenuTest
//
//  Created by David Yoon on 2021/11/09.
//

import UIKit

class SideMenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
    }
    
    
    private func setDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

    



}


extension SideMenuViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "MenuTitle"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
}
