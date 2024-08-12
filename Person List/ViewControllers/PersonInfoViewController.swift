//
//  ViewController.swift
//  Person List
//
//  Created by Владислав Резван on 10.08.2024.
//

import UIKit

final class PersonInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        
        self.title = "\(person.name) \(person.surname)"
        
    }


}

