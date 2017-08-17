//
//  MainViewController.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/15/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import UIKit
//import RealmSwift
import Alamofire

class MainViewController: UIViewController {
    
    var cellsArray = [[CellModel](), [CellModel]()]
    let categoryList: [String] = ["User ID Photos", "Certificate Photos"]
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetup()

    }

    
    
    
    
    
    
    func initialSetup() {
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
//        self.cellsArray[0].append(<#T##newElement: Element##Element#>)
    }
    
    
    func addImage() {
        print("ТЫЦ! 11")
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let section = indexPath.section
        let row = indexPath.row
        let cellData = self.cellsArray[section][indexPath.row]
        
        if (section == 0) {
            
            if cellData.picData != nil {
                
            } else {
                
                let button = UIButton(frame: CGRect(x: 8, y: 8, width: 44, height: 44))
                button.addTarget(self, action: #selector(MainViewController.addImage), for: .touchUpInside)
                
                cell.addSubview(button)
            }
            
        } else if (section == 1) {
            
            
        }
        
        return cell
    }
}
