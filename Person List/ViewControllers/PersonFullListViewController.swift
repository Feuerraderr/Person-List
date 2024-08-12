//
//  PersonFullListViewController.swift
//  Person List
//
//  Created by Владислав Резван on 10.08.2024.
//

import UIKit

class PersonFullListTableViewController: UITableViewController {

    var personList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource

extension PersonFullListTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(personList[section].name) \(personList[section].surname)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullList", for: indexPath)
        let person = personList[indexPath.section]
        
        var configuration = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            configuration.text = person.phoneNumber
            configuration.image = UIImage(systemName: "phone")
        } else {
            configuration.text = person.email
            configuration.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = configuration
        
        return cell
    }
    
}


// MARK: - UITableViewDelegate

extension PersonFullListTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
