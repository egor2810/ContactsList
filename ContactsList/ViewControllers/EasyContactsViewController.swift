//
//  ViewController.swift
//  ContactsList
//
//  Created by Егор Аблогин on 14.12.2023.
//

import UIKit

final class EasyContactsViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailedVC = segue.destination as? EasyDetailedViewController
        guard let selectedRowIndex = tableView.indexPathForSelectedRow?.row
        else { return }
        
        detailedVC?.personInfo = persons[selectedRowIndex]
    }

}

// MARK: - UITableViewDataSource
extension EasyContactsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "easyCell",
            for: indexPath
        )
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
