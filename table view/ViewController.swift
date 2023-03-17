//
//  ViewController.swift
//  table view
//
//  Created by monil sojitra on 07/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var fgcolour = [["wi-fi","bluttoth","mobile networks","connection & sharing"],["personalization","home screen & lock screen","display & brightness","sound & vibration","notifications & status bar"]]
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        fgcolour.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fgcolour[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fgcolour[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "section 1"
        }
        else if section == 1{
            return "section 2"
        }
        else if section == 2{
            return "section 3"
        }
        return ""
    }


}

