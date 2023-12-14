//
//  EasyDetailedViewController.swift
//  ContactsList
//
//  Created by Егор Аблогин on 14.12.2023.
//

import UIKit

final class EasyDetailedViewController: UIViewController {
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = personInfo.fullName
        phoneNumberLabel.text = personInfo.phoneNumber
        emailLabel.text = personInfo.email
    }
}
