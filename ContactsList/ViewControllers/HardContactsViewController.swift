//
//  HardContactsViewController.swift
//  ContactsList
//
//  Created by Егор Аблогин on 14.12.2023.
//

import UIKit

final class HardContactsViewController: UITableViewController {
    
    var persons: [Person]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomHeader.self,
               forHeaderFooterViewReuseIdentifier: "sectionHeader")
        tableView.allowsSelection = false
    }
}

// MARK: - UITableViewDataSource
extension HardContactsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].contactData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "hardCell",
            for: indexPath
        )
        
        let person = persons[indexPath.section]
        let icons = ["phone.fill", "envelope.fill"]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.contactData[indexPath.row]
        content.image = UIImage(systemName: icons[indexPath.row])
        cell.contentConfiguration = content
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(
            withIdentifier: "sectionHeader"
        ) as! CustomHeader
        
        view.title.text = persons[section].fullName
        return view
    }
}
