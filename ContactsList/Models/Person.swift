//
//  Person.swift
//  ContactsList
//
//  Created by Егор Аблогин on 14.12.2023.
//

import Foundation

struct Person {
    private let name: String
    private let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var contactData: [String] {
        [phoneNumber, email]
    }
    
    static func getPerson() -> [Person] {
        let dataStore = DataStore()
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        
        let peoplesCount = [
            names.count,
            surnames.count,
            emails.count,
            phoneNumbers.count
        ].min()
        
        guard let peoplesCount, peoplesCount > 0 else { return [] }
        
        var resultPersons: [Person] = []
        
        for index in (0..<peoplesCount) {
            resultPersons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    phoneNumber: phoneNumbers[index]
                )
            )
        }
        
        return resultPersons
    }
}
