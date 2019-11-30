//
//  ViewController.swift
//  tableview
//
//  Created by Po yeh Fu on 26/11/19.
//  Copyright © 2019 Po yeh Fu. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    var rowList = [
        "This is section 0, row 0",
        "This is section 0, row 1",
        "This is section 0, row 2",
        "This is section 0, row 3",
        "This is section 0, row 4",
        "This is section 0, row 5",
        "This is section 0, row 6",
        "This is section 0, row 7",
        "This is section 0, row 8",
        "This is section 0, row 9"
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowList.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //把Array裡的值指派到text裡
        let text = rowList[indexPath.row]
        //使cell可以重複使用，在storyboard裡的cell的Identifier設為myCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        //使label和cell連結在一起，並把text值給予label
        if let label = cell.viewWithTag(100) as? UILabel {
                label.text = text
            }
        //回傳對應cell，同時顯示對應的label
        return cell
    }
    
 
}




/*

class TableViewController: UITableViewController {
    
    
}


 */
