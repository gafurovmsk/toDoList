//
//  ToDoListCell.swift
//  todoList
//
//  Created by Nik on 24.11.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class ToDoListCell: BaseCellClass {
  
  
  var nameLabel: UILabel = {
    let label = UILabel()
    label.text = "defaultState"
    // чтобы constraints работали
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    
    
  }()
  
  
  
  override func setupViews () {
    
    
    addSubview(nameLabel)
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    
    addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameLabel]))
    
    
    
    
  }
  
  
  
  
}
