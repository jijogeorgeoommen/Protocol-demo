//
//  SecondViewController.swift
//  Protocol demo
//
//  Created by JIJO G OOMMEN on 19/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit


protocol yourselection_protocol {
    func yourselection(numb : String)
}

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var numb_array = ["one","two","three","four","five","six","seven"]
    
    var selected : yourselection_protocol?

    @IBOutlet var tableviewoutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numb_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewoutlet.dequeueReusableCell(withIdentifier: "TableViewCellid")as! TableViewCell
        
        cell.labeloutlet.text = numb_array[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selected?.yourselection(numb: numb_array[indexPath.row])
        
        self.navigationController?.popViewController(animated: true)
    }
    
   

}
