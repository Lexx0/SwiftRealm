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

    override func viewDidLoad() {
        super.viewDidLoad()

        initConfig()
    }

    
    func initConfig() {
        self.tablewView.registerCell(withClass: ChooseFileCell.self)
    }

    
    @IBAction func okBtnTapped(_ sender: Any) {
    }

}





extension ChooseFileVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        //
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tablewView.dequeueReusableCell(withIdentifier: "ChooseFileCell", for: indexPath) as! ChooseFileCell
        cell.checkBox.tag = indexPath.row
    }
}
