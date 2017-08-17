//
//  ChooseFileVC.swift
//  mova_photoStorage_tt
//
//  Created by Alex Berezovsky on 8/17/17.
//  Copyright © 2017 PatataMatata. All rights reserved.
//

import UIKit

class ChooseFileVC: UIViewController {
    @IBOutlet weak var tablewView: UITableView!
    @IBOutlet weak var okBtn: UIButton!
    
    var states: [FileState]? {
        didSet {
            states.map({ _ in self.tablewView.reloadData() })
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        initConfig()
    }

    
    func initConfig() {
        self.tablewView.registerCell(withClass: ChooseFileCell.self)
    }

    
    @IBAction func okBtnTapped(_ sender: Any) {
        
        fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        fileURL = (fileURL!).appendingPathComponent(chosenFileName, isDirectory: false)
        
        self.dismiss(animated: true)
    }
    
    func checkBoxTapped(sender: CheckBox) {
        
        fileToChoseCheckedBox = IndexPath(row: sender.tag, section: 0)
        self.tablewView.reloadData()
    }

}





extension ChooseFileVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.states!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tablewView.dequeueReusableCell(withIdentifier: "ChooseFileCell", for: indexPath) as! ChooseFileCell
        cell.checkBox.tag = indexPath.row
        
        let state = (self.states?[indexPath.row])!
        cell.fillWithState(state)
        
        cell.checkBoxBlock = { chechBox in

            fileToChoseCheckedBox = indexPath
            print("cellForRowAt", fileToChoseCheckedBox)
            state.isSelected = !chechBox.isChecked
            
            cell.checkBox.addTarget(self, action: #selector(self.checkBoxTapped), for: .touchUpInside)
            
            if indexPath == fileToChoseCheckedBox {
                cell.checkBox.isChecked = true
            } else {
                cell.checkBox.isChecked = false
            }
        }
        
        return cell
    }
}
