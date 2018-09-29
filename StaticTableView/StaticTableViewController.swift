//
//  StaticTableViewController.swift
//  StaticTableView
//
//  Created by Adrian Bolinger on 9/28/18.
//  Copyright © 2018 Adrian Bolinger. All rights reserved.
//

import UIKit

class StaticTableViewController: UITableViewController {
  
  // MARK: -  IBOutlets
  
  @IBOutlet weak var usernameLabel: UILabel!
  @IBOutlet weak var usernameValueLabel: UILabel!
  
  @IBOutlet weak var membershipStatusLabel: UILabel!
  @IBOutlet weak var membershipStatusValueLabel: UILabel!
  
  @IBOutlet weak var dataUsedLabel: UILabel!
  @IBOutlet weak var dataUsedValueLabel: UILabel!
  
  @IBOutlet weak var tipsTextView: UITextView!
  
  @IBOutlet weak var feedbackTextView: UITextView!
  
  
  // MARK: - Lifecycle Methods
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Configure Settings Title
    self.navigationController?.navigationBar.prefersLargeTitles = true
    self.navigationController?.navigationItem.title = "Settings"
    
    // Configure TableViewController appearance
    tableView.separatorStyle = .none
    
    // Configure Colors
    [usernameValueLabel, membershipStatusValueLabel, dataUsedValueLabel].forEach{ element in
      element?.textColor = .bigBoyBlue
    }
    
    [tipsTextView, feedbackTextView].forEach { textView in
      textView?.backgroundColor = .bigBoyBlue
    }
    
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = 44.0
    
    view.subviews.filter{ $0 is UITextView }.forEach { textView in
      textView.sizeToFit()
    }
  }
  
  // MARK: -  Custom Sizing Method
  func resize(_ textView: UITextView, in view: UIView) -> CGFloat {
    return textView.sizeThatFits(view.frame.size).height
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
    guard let cell = tableView.cellForRow(at: indexPath) else { return 44 }
    
    switch indexPath.row {
    case 3:
      return tipsTextView.sizeThatFits(cell.frame.size).height
    case 4:
      return feedbackTextView.sizeThatFits(cell.frame.size).height
    default:
      return UITableView.automaticDimension
    }
  }
  
  // MARK: - UITableView Delegate Methods
  
  /*
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
   
   // Configure the cell...
   
   return cell
   }
   */
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the specified item to be editable.
   return true
   }
   */
  
  /*
   // Override to support editing the table view.
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
   if editingStyle == .delete {
   // Delete the row from the data source
   tableView.deleteRows(at: [indexPath], with: .fade)
   } else if editingStyle == .insert {
   // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
   }
   }
   */
  
  /*
   // Override to support rearranging the table view.
   override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
