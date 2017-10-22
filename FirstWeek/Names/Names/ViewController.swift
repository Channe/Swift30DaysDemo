//
//  ViewController.swift
//  Names
//
//  Created by QianLei on 2017/10/22.
//  Copyright © 2017年 ichanne. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let sectionTitles = ["A","B","C","D","E"];
    let names = [["A","AA","AAA","AAAA","AAAAA"],
                 ["B","BB","BBB","BBBB","BBBBB"],
                 ["C","CC","CCC","CCCC","CCCCC"],
                 ["D","DD","DDD","DDDD","DDDDD"],
                 ["F","EE","EEE","EEEE","EEEEE"]];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "Names"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sectionTitles
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:.default, reuseIdentifier: "cellId")
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

