//
//  TabBarViewController.swift
//  Person List
//
//  Created by Владислав Резван on 10.08.2024.
//

import UIKit

class TabBarViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        let personList = Person.getPersonList()
        
        viewControllers.forEach {
            if let personListVC = $0 as? PersonListTableViewController {
                personListVC.personList = personList
            } else if let personFullListVC = $0 as? PersonFullListTableViewController {
                personFullListVC.personList = personList
            }
        }
    }
}
