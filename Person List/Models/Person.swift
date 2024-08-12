//
//  Model.swift
//  Person List
//
//  Created by Владислав Резван on 10.08.2024.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    static func getPersonList() -> [Person] {
        var persons: [Person] = []
        let personInfo = PersonInfo()
        
        let names = personInfo.names.shuffled()
        let surnames = personInfo.surnames.shuffled()
        let emails = personInfo.emails.shuffled()
        let phoneNumbers = personInfo.numbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        )
        
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        return persons
    }
}
