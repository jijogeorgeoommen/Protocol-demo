//
//  ViewController.swift
//  Protocol demo
//
//  Created by JIJO G OOMMEN on 19/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,yourselection_protocol {
    
    @IBOutlet var textfieldoutlet: UITextField!
    
    
    func yourselection(numb: String) {
        textfieldoutlet.text = numb
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        let va = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerid")as! SecondViewController
        
        va.selected = self
        
        self.navigationController?.pushViewController(va, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textfieldoutlet.delegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        textfieldoutlet.resignFirstResponder()
   
    }


}

