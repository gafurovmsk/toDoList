//
//  customCollectionViewController.swift
//  todoList
//
//  Created by Nik on 24.11.16.
//  Copyright © 2016 Gafurov. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically frovar nib.
    
    
    navigationItem.title = "Your to-do list"
   // UINavigationBar.appearance().tintColor = UIColor.greenColor()
    
    
    collectionView?.backgroundColor = UIColor.whiteColor()
    collectionView?.alwaysBounceVertical = true
    
    
    // здесь регистрация ячеек
    collectionView?.registerClass(ToDoListCell.self, forCellWithReuseIdentifier: "doListCell")
    
    // теперь мы добавим специальный headerCell для нашего view
    
    collectionView?.registerClass(HeaderAddCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "headerAddCell")
    
  }
  
  
  // пусть массив будет задаваться здесь, потом решим что и как хранить в приложении
  
  var taskList = ["understanding mvvm architechture", "swift app design", "drink orange juice"]
  
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return taskList.count
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    
    
    let changingCell = collectionView.dequeueReusableCellWithReuseIdentifier("doListCell", forIndexPath: indexPath) as! ToDoListCell
    
    changingCell.nameLabel.text = "#\(indexPath.item + 1): \(taskList[indexPath.row])"
    
    return changingCell
    
  }
  
  func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    return CGSizeMake(view.frame.width, 72)
  }
  
  
  
  
  // две дальнейшие функции только  для header addCell ячейки
  
  override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
    let header = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "headerAddCell", forIndexPath: indexPath) as! HeaderAddCell
    
    header.ourViewController = self
    
    return header
  }
  
  
   func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    return CGSizeMake(view.frame.width, 72)
  }
  
  
  // добавим последнюю функцию которая будет работать с добавлением в список новых дел
  
  func addNewTask(taskName: String){
    
    taskList.append(taskName)
    collectionView?.reloadData()
    
    
    
    
  }
  
  
  
  
  override func viewWillAppear(animated: Bool) {
    
    
    
    // self.navigationItem.title = "in viiew vill appear"
    
    
  }
  
  
  
}

