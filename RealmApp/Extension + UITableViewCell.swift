//
//  Extension + UITableViewCell.swift
//  RealmApp
//
//  Created by Илья Гусаров on 15.08.2022.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.name
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
        } else if currentTasks.isEmpty {
            content.secondaryText = "✅"
        } else {
            content.secondaryText = "\(currentTasks.count)"
        }
        
        contentConfiguration = content
    }
}
