//
//  ViewController.swift
//  Code-Swag
//
//  Created by David Ortiz on 8/22/17.
//  Copyright © 2017 David Ortiz. All rights reserved.
//

import UIKit

class CatergoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategory()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else {
            
            return CategoryCell()
        }
    }

}

