//
//  PersonListTableViewController.swift
//  Person List
//
//  Created by Владислав Резван on 10.08.2024.
//

import UIKit

class PersonListTableViewController: UITableViewController {

    var personList: [Person]!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personInfoVC = segue.destination as? PersonInfoViewController
        personInfoVC?.person = personList[indexPath.row]
    }
}

// MARK: - UITableViewDataSource

extension PersonListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        
        
        return cell
    }
}

