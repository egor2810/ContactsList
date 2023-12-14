//
//  CustomHeader.swift
//  ContactsList
//
//  Created by Егор Аблогин on 14.12.2023.
//

import UIKit

class CustomHeader: UITableViewHeaderFooterView {
    let title = UILabel()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func configureContents() {
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .gray
        title.font = .boldSystemFont(ofSize: 18)
        contentView.addSubview(title)
        NSLayoutConstraint.activate([
            title.heightAnchor.constraint(equalToConstant: 30),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            title.trailingAnchor.constraint(equalTo:
                   contentView.layoutMarginsGuide.trailingAnchor),
            title.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
    }
}
