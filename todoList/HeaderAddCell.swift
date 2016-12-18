//
//  HeaderAddCell.swift
//  todoList
//
//  Created by Nik on 24.11.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class HeaderAddCell: BaseCellClass {
  
  var ourViewController: CustomCollectionViewController?
  
  var taskField: UITextField = {
    
    let field = UITextField()
    
    field.placeholder = "Enter new task"
    
    field.borderStyle = .RoundedRect
    
    field.translatesAutoresizingMaskIntoConstraints = false
    
    return field
  }()
  
  var addButton : UIButton = {
    
    let button = UIButton(type: .System)
    
    button.setTitle("Add task", forState: .Normal)
    
    button.translatesAutoresizingMaskIntoConstraints = false
    
    return button
  }()
  
  
  
  
  override func setupViews() {
    
    
    
    addSubview(taskField)
    addSubview(addButton)
    
    
    addButton.addTarget(self, action: "addingTaskWhenPressed", forControlEvents: .TouchUpInside)
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[v0]-[v1]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": taskField, "v1": addButton]))
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": taskField]))
    
     addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": addButton]))
    
    
    
    
  }
  
  
  func addingTaskWhenPressed () {
    
    ourViewController?.addNewTask(taskField.text!)
    
  }
  
  
  
  
}
