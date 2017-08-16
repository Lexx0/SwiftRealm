//
//  MainViewController.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/15/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import UIKit
//import RealmSwift 

class MainViewController: UIViewController {
    
    var cellsArray = [[CellModel](), [CellModel]()]
    let categoryList: [String] = ["User ID Photos", "Certificate Photos"]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetup()

        // Do any additional setup after loading the view.
    }

    func initialSetup() {
        
//        self.tableSwitch.setTitle("User ID Photos", forSegmentAt: 0)
//        self.tableSwitch.setTitle("Certificate Photos", forSegmentAt: 1)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var sectionName = ""
        
        if (section == 0) {
            sectionName = self.categoryList[0]
        } else if (section == 1) {
            sectionName = self.categoryList[1]
        }
        
        return sectionName
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell0", for: indexPath)
        let section = indexPath.section
        let row = indexPath.row
        
        if (section == 0) {
            
            
        } else if (section == 1) {
            
            
        }
        
        return cell
    }
}
